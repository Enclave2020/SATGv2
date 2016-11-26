HUD_Update = {
	_display = uiNameSpace getVariable "SATGv2Hud";
	_setText = _display displayCtrl 1001;
	
	//_water = (player getVariable ["Food", [0, 0]]) param [0];
	//_food = (player getVariable ["Food", [0, 0]]) param [1];
	_temp = round (player getVariable ["temperature", 36]);
	
	//_setText ctrlSetStructuredText (parseText format ["<img size='4' image='images\hudWater.paa'/>x%1  <img size='4' image='images\hudFood.paa'/>x%2<img size='4.5' image='images\hudTemp.paa'/>%%3°", _water, _food, _temp]);
	
	//_setText ctrlSetStructuredText (parseText format ["<img size='4' image='images\hudWater.paa'/>x%1  <img size='4' image='images\hudFood.paa'/>x%2", _water, _food]);
	
	_setText ctrlSetStructuredText (parseText format ["<img size='4.5' image='images\hudTemp.paa'/>%1°", _temp]);
	
	// MONEY
	_moneyText = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	_moneyText ctrlSetStructuredText parseText Format ["%1$", _money];
};

HUD_showMoney = {
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
};

HUD_showMoneySub = {
	_delta = round param [0];
	
	_display = uiNameSpace getVariable "SATGv2Hud";
	_moneyText = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	
	_moneyText ctrlSetStructuredText parseText Format ["%1$ (<t color='#ff0000'>-%2$</t>)", _money, _delta];
	
	//sleep 2;
	//_moneyText ctrlSetStructuredText parseText "";
};

HUD_Handler = {
	while {true} do {
		if (isNull (uiNameSpace getVariable ["SATGv2Hud", objNull])) then {1337 cutRsc ["SATGv2Hud","PLAIN"]};
		call HUD_Update;
		sleep 2;
	};
};


if (hasInterface) then {
	[] spawn HUD_Handler;
};
