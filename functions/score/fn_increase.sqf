	params ["_unit", "_killer", "_instigator"];
	_instigator setVariable ["Kills", (_instigator getVariable ["Kills", 0]) + 1, True];
	
	if (isDedicated) then {remoteExec ["SATGv2_Score_fnc_callBack", owner _instigator]} else {remoteExec ["SATGv2_Score_fnc_callback"]};