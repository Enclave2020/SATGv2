	params ["_priceIndex"];
	
	_index = lbCurSel 1500;
	_item = shopContent select _index;
	_type = (_item select 0) call SHOP_itemConfig;
	_price = (_item select _priceIndex) * shopMul;
	
	if (not (_price call SHOP_canBuy)) exitWith {};
	
	_price call FNC_subMoney;
	playSound "bought";		
	
	_class = _item select 0;	
	
	if (_priceIndex == 2) exitWith {shopCrate addMagazineCargoGlobal [_class call SHOP_ammoType, 1]};
	if (_type == "CfgVehicles") exitWith {
		if ([_class, "vehicleClass"] call SHOP_itemInfo == "Backpacks") then {
			shopCrate addBackpackCargoGlobal [_class, 1];
		} else {
			_class call SHOP_buyVehicle;
		};
	};
	
	shopCrate addItemCargoGlobal [_class, 1];