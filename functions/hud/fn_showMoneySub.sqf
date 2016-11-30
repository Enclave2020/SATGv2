	disableSerialization;
	
	_delta = round param [0];
	
	_display = uiNameSpace getVariable "SATGv2Hud";
	_moneyText = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	
	_moneyText ctrlSetStructuredText parseText Format ["%1$ (<t color='#ff0000'>-%2$</t>)", _money, _delta];
	
	//sleep 2;
	//_moneyText ctrlSetStructuredText parseText "";