	_delta = round param [0, 0];
	
	_display = uiNameSpace getVariable "SATGv2Hud";
	_moneyText = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	
	if (_delta == 0) then {
		_moneyText ctrlSetStructuredText parseText Format ["%1$", _money];
	} else {
		_moneyText ctrlSetStructuredText parseText Format ["%1$ (+%2$)", _money, _delta];
	};
	
//	sleep 2;
//	_moneyText ctrlSetStructuredText parseText "";