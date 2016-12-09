	_lastCamp = profileNamespace getVariable ["SATGv2LastCamp", 0];
	// 30 MINS = 0.00005
	
	_time = 0.00005 * 4;
	if ("cd_fireplace" call SATGv2_Perks_fnc_active) then {
		_time = _time / 3;
	};
	if (dateToNumber date - _lastCamp > _time) exitWith {
		player playAction "PutDown";
		"Campfire_burning_F" createVehicle position player;
		profileNamespace setVariable ["SATGv2LastCamp", dateToNumber date];
		titleText [localize "str_SATGv2_campFireDone", "PLAIN DOWN", 1];
	};
	
	titleText [localize "str_SATGv2_campFireWait", "PLAIN DOWN", 1];