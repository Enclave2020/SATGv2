	if (not (5000 call SATGv2_Shop_fnc_canBuy)) exitWith {titleText [localize "str_SATGv2_shopTeaNeedMoney", "PLAIN DOWN"]};
	
	5000 call SATGv2_fnc_subMoney;	
	
	titleText ["", "BLACK OUT"];
	sleep 1;
	10 remoteExec ["skipTime", 2];
	titleText ["", "BLACK IN"];