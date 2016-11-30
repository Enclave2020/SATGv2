	_lastCamp = profileNamespace getVariable ["SATGv2LastCamp", 0];
	// 30 MINS = 0.00005
	if (dateToNumber date - _lastCamp > (0.00005 * 4)) exitWith {
		player playAction "PutDown";
		"Campfire_burning_F" createVehicle position player;
		profileNamespace setVariable ["SATGv2LastCamp", dateToNumber date];
		titleText [localize "str_SATGv2_campFireDone", "PLAIN DOWN", 1];
	};
	
	titleText [localize "str_SATGv2_campFireWait", "PLAIN DOWN", 1];