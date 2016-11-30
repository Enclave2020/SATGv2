	disableSerialization;
	_display = uiNameSpace getVariable "SATGv2Hud";
	_setText = _display displayCtrl 1001;
	_temp = round (player getVariable ["temperature", 36]);
	
	// _setText ctrlSetStructuredText (parseText format ["<img size='4.5' image='images\hudTemp.paa'/>%1°", _temp]);
	_setText ctrlSetStructuredText (parseText format ["<img size='4.5' image='images\hudTemp%1.paa'/>", round ((36 - _temp) / 3.2) min 5]);
	
	// MONEY
	_moneyText = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	_moneyText ctrlSetStructuredText parseText Format ["%1$", _money];