	params ["_unit", "_killer"];
	_killer setVariable ["Kills", (_killer getVariable ["Kills", 0]) + 1, True];
	
	if (isDedicated) then {remoteExec ["FNC_Score_Callback", owner _killer]} else {remoteExec ["FNC_Score_Callback"]};