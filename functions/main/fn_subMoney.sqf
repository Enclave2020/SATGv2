	params ["_count"];
	
	_money = profileNamespace setVariable ["SATGMoney", (profileNamespace getVariable ["SATGMoney", 0]) - _count];
	[_count] spawn HUD_showMoneySub;
	
	playSound "money";