	params ["_index"];
	
	_item = shopContent select _index;
	_haveAmmo = count getArray (configfile >> "CfgWeapons" >> _item select 0 >> "magazines") > 0;
	ctrlShow [1602, _haveAmmo];
	
	_dialog = uiNameSpace getVariable "shopUnified";
	_description = Format ["%1<br/>Cost: %2", [_item select 0, "descriptionShort"] call SHOP_itemInfo, (_item select 1) * shopMul];
	if (_haveAmmo) then {_description = Format ["%1<br/>Ammo cost: %2", _description, _item select 2]};
	
	(_dialog displayCtrl 1101) ctrlSetStructuredText parseText Format ["<t size='1.5' align='center'>%1</t>", [_item select 0, "displayName"] call SHOP_itemInfo];
	(_dialog displayCtrl 1100) ctrlSetStructuredText parseText _description;
	(_dialog displayCtrl 1200) ctrlSetText ([_item select 0, "picture"] call SHOP_itemInfo);