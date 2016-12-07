	params ["_priceIndex"];
	
	_index = lbCurSel 1500;
	_item = shopContent select _index;
	_type = (_item select 0) call SATGv2_Shop_fnc_itemConfig;
	_price = (_item select _priceIndex) * shopMul;
	
	if (not (_price call SATGv2_Shop_fnc_canBuy)) exitWith {};
	
	_price call SATGv2_fnc_subMoney;
	
	_class = _item select 0;	
	
	if (_priceIndex == 2) exitWith {shopCrate addMagazineCargoGlobal [_class call SATGv2_Shop_fnc_ammoType, 1]};
	if (_type == "CfgVehicles") exitWith {
		if ([_class, "vehicleClass"] call SATGv2_Shop_fnc_itemInfo == "Backpacks") then {
			shopCrate addBackpackCargoGlobal [_class, 1];
		} else {
			_class call SATGv2_Shop_fnc_buyVehicleEx;
		};
	};
	
	shopCrate addItemCargoGlobal [_class, 1];