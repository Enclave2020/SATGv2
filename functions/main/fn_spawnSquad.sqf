	params ["_logic"];
	
	_group = createGroup WEST;
	_group setVariable ["OwnerLogic", _logic];
	
	_grade = _logic getVariable ["sectorGrade", 0];
	_points = (_grade + 1) ^ 3 * chaosLevel;
	
	// BEHAVIOUR
	if (chaosLevel < 0.3) then {_group setBehaviour "SAFE"};	
	if (chaosLevel > 0.4) then {_group setBehaviour "COMBAT"};
	
	
	/*
	// COPTERS
	while {_points > 150} do {
		_position = [position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
		
		
		[[_position select 0, _position select 1, 100], 0, "B_Heli_Attack_01_F", _group] call bis_fnc_spawnvehicle;
		_points = _points - 150;
	};
	*/
	
	// TANKS
	while {_points > 50} do {
		[[position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos, 0, "B_MBT_01_cannon_F", _group] call bis_fnc_spawnvehicle;
		_points = _points - 50;
	};	
	
	// APC
	while {_points > 25} do {
		[[position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos, 0, selectRandom ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F"], _group] call bis_fnc_spawnvehicle;
		_points = _points - 25;
	};	
	
	[_group, position _logic, _points, 100] call SATGv2_fnc_spawnUnits;
	
	_groupVehicles = (units _group) select {vehicle _x != _x};
	{
		_x addEventHandler ["Killed", {call SATGv2_fnc_destroyBonus}];
		clearWeaponCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearItemCargoGlobal _x;
		clearBackpackCargoGlobal _x;
	} forEach _groupVehicles;
	
	_group