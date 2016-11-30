	params ["_name"];
	
	_clearedSectors = (units groupLogic) select {_x getVariable "Cleaned"} apply {_x getVariable "Name"};
	_respawnPoints = missionNamespace getVariable ["SATGv2Respawns", []];
	profileNamespace setVariable [_name + "_World", [date, overcast, _clearedSectors, chaosLevel, _respawnPoints]];