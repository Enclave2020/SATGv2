	_moneyPlayer = profileNamespace getVariable ["SATGMoney", 0];
	if (_moneyPlayer < 1000) exitWith {};
	if (not isPlayer cursorObject) exitWith {titleText [localize "str_SATGv2_shareFail", "PLAIN DOWN"]};
	
	cursorObject remoteExec ["SATGv2_fnc_shareMoneyServer", 2];
	1000 call SATGv2_fnc_subMoney;