	if (not (6000 call SATGv2_Shop_fnc_canBuy)) exitWith {titleText [localize "str_SATGv2_shopToolsNeedMoney", "PLAIN DOWN"]};
	6000 call SATGv2_fnc_subMoney;	
	
	_toolkits = player getVariable ["ToolkitCount", 0];
	player setVariable ["ToolkitCount", _toolkits + 1];
	titleText [localize "str_SATGv2_shopToolsBought", "PLAIN DOWN"];