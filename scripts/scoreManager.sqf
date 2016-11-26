FNC_Score_Increase = {
	params ["_unit", "_killer"];
	_killer setVariable ["Kills", (_killer getVariable ["Kills", 0]) + 1, True];
	
	if (isDedicated) then {remoteExec ["FNC_Score_Callback", owner _killer]} else {remoteExec ["FNC_Score_Callback"]};
};

FNC_Score_Callback = {
	sleep 0.2;
	100 call FNC_addMoney;
};

FNC_addMoney = {
	params ["_count"];
	
	_money = profileNamespace setVariable ["SATGMoney", (profileNamespace getVariable ["SATGMoney", 0]) + _count];
	//[_count] spawn FNC_showMoney;
	[_count] spawn HUD_showMoney;
	
	playSound "money";
};

FNC_subMoney = {
	params ["_count"];
	
	_money = profileNamespace setVariable ["SATGMoney", (profileNamespace getVariable ["SATGMoney", 0]) - _count];
	[_count] spawn HUD_showMoneySub;
	
	playSound "money";
};

FNC_showMoney = {
	_money = profileNamespace getVariable ["SATGMoney", 0];
	
	with uiNamespace do {
		hudMoney ctrlSetText Format ["%1$ (+%2)", _money, _this param [0]];
		sleep 2;
		hudMoney ctrlSetText "";
	};
};

FNC_Score_Init = {
	{
		_x addEventHandler ["killed", {call FNC_Score_Increase}];
		_x setVariable ["scoreInited", True];
	} foreach (allUnits select {side _x == WEST and (not (_x getVariable ["scoreInited", False]))});	
};
