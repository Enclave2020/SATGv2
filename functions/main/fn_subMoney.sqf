	params ["_count"];
	
	_money = profileNamespace setVariable ["SATGMoney", (profileNamespace getVariable ["SATGMoney", 0]) - _count];
	[_count] spawn SATGv2_Hud_fnc_showMoneySub;
	
	playSound "AddItemFailed";	