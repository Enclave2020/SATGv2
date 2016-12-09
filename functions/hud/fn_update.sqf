	disableSerialization;
	_display = uiNameSpace getVariable "SATGv2Hud";
	_setText = _display displayCtrl 1001;
	_temp = round (player getVariable ["temperature", 36]);
	_tools = player getVariable ["toolkitCount", 0];
	_ammo = player getVariable ["ammoCount", 0];
	
	_setText ctrlSetStructuredText (parseText format ["<img size='4' image='images\hudAmmo.paa'/> x%1 <img size='4' image='images\hudToolkit.paa'/> x%2<img size='4.5' image='images\hudTemp%3.paa'/>", _ammo, _tools, round ((36 - _temp) / 3.2) min 5]);
	
	// MONEY
	_text = _display displayCtrl 1002;
	_money = round (profileNamespace getVariable ["SATGMoney", 0]);
	_text ctrlSetStructuredText parseText Format ["%1$", _money];
	
	// XP
	_text = _display displayCtrl 1004;
	(profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) params ["_level", "_xp", "_points"];
	_xpNextLevel = ((_level + 1) ^ 3) * 10;
	_text ctrlSetStructuredText parseText Format ["%1 XP (%2)", _xpNextLevel - _xp, _points];