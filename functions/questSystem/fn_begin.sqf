	params ["_index"];
	if (not call SATGv2_Quest_fnc_canStart) exitWith {};
	missionNameSpace setVariable ["SATGv2CurrentQuest", _index];
	
	switch (_index) do {
		case 0 : {remoteExec ["SATGv2_Quest_fnc_campBravo", 2]};
		case 1 : {remoteExec ["SATGv2_Quest_fnc_oldFriend", 2]};
	};