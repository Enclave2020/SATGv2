	if (not (10000 call SATGv2_Shop_fnc_canBuy)) exitWith {titleText [localize "str_SATGv2_shopToolsNeedMoney", "PLAIN DOWN"]};
	10000 call SATGv2_fnc_subMoney;	
	
	_toolkits = player getVariable ["ammoCount", 0];
	player setVariable ["ammoCount", _toolkits + 1];
	titleText [localize "str_SATGv2_shopAmmoBought", "PLAIN DOWN"];