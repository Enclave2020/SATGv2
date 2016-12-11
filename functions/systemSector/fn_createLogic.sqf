	params ["_location", "_grade"];
	
	_position = locationPosition _location;	
	
	_clearedSectors = (profileNamespace getVariable ["SATGv2_World", [0, 0, []]]) param [2];
	if (_clearedSectors find (str _location) >= 0) exitWith {
		_logic = groupLogic createUnit ["Logic", _position, [], 0, "NONE"];
		_logic setVariable ["cleaned", True];
		_logic setVariable ["Name", str _location];
		[_position, True] call SATGv2_Sector_fnc_createMarker;
	};
	
	_logic = groupLogic createUnit ["Logic", _position, [], 0, "NONE"];
	_logic setVariable ["Name", str _location];
	_logic setVariable ["sectorGrade", _grade];
	
	_trigger = createTrigger ["EmptyDetector", _position];
	[_trigger, _logic] call SATGv2_Sector_fnc_triggerSetOwner;
	
	// SPAWN AND DESPAWN
	_trigger setTriggerArea [1000 / 2, 1000 / 2, 0, True];
	_trigger setTriggerActivation ["GUER", "PRESENT", True];
	_trigger setTriggerStatements ["this", "(thisTrigger call SATGv2_Sector_fnc_triggerOwner) call SATGv2_Sector_fnc_trySpawn", "(thisTrigger call SATGv2_Sector_fnc_triggerOwner) call SATGv2_Sector_fnc_tryDeSpawn"];	

	_logic setVariable ["Marker", [position _logic, False] call SATGv2_Sector_fnc_createMarker];