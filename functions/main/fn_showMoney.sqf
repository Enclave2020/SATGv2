	_money = profileNamespace getVariable ["SATGMoney", 0];
	
	with uiNamespace do {
		hudMoney ctrlSetText Format ["%1$ (+%2)", _money, _this param [0]];
		sleep 2;
		hudMoney ctrlSetText "";
	};