	params ["_unit", "_killer"];
	_killer setVariable ["Kills", (_killer getVariable ["Kills", 0]) + 1, True];
	
	if (isDedicated) then {remoteExec ["SATGv2_Score_fnc_callBack", owner _killer]} else {remoteExec ["SATGv2_Score_fnc_callback"]};