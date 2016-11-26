shopVehicleContent = [
	["rhsusf_m1025_w", 1000],
	["rhsusf_m1025_w_m2", 3000],
	["rhsusf_m1025_w_mk19", 5000],
	["rhsusf_m113_usarmy", 7000],
	["rhsusf_M1117_W", 10000],
	["rhsusf_m113_usarmy_M240", 10000],
	["rhsusf_m113_usarmy_MK19", 13000],
	["RHS_M2A3_BUSKIII_wd", 20000],
	["rhsusf_m1a2sep1tuskiiwd_usarmy", 50000]
];

shopItemsContent = [
	["ItemCompass", 50],
	["FirstAidKit", 200],
	["acc_flashlight", 250],
	["ItemMap", 500],
	["V_HarnessO_gry", 500],
	["NVGoggles_OPFOR", 1000],
	["bipod_02_F_blk", 1000],
	["ItemGPS", 1000],
	["ItemRadio", 1000],
	["V_TacVest_blk", 1000],
	["H_HelmetB_light", 1000],
	["H_HelmetB", 2000],
	["V_PlateCarrier1_blk", 2000],
	["Rangefinder", 3000],
	["H_HelmetSpecB", 3000],
	["V_PlateCarrier2_blk", 4000],
	["V_PlateCarrierSpec_blk", 7000]
];

SHOP_canBuy = {
	params ["_price"];
	_money = profileNamespace getVariable ["SATGMoney", 0];
	_money >= _price
};

SHOP_buyItem = {
	params ["_id"];
	_item = shopItemsContent select _id;
	_price = _item select 1;
	
	if (_price call SHOP_canBuy) then {
		call TRADER_lastCrate addItemCargoGlobal [_item select 0, 1];
		_price call FNC_subMoney;
		playSound "bought";
	};
};

SHOP_buySight = {
	params ["_id"];
	_weapon = (1 / (chaosLevel - 0.15)) call FNC_SW_sights select _id;
	_price = round (_weapon select 1) * 1000;
	
	if (_price call SHOP_canBuy) then {
		call TRADER_lastCrate addItemCargoGlobal [_weapon select 0, 1];
		_price call FNC_subMoney;
		playSound "bought";
	};
};

SHOP_buyVehicle = {
	params ["_id"];
	
	_item = shopVehicleContent select _id;
	_price = _item select 1;
	
	if (_price call SHOP_canBuy) then {
		_pos = getMarkerPos "shopVehicleDrop";
		_pos = [_pos select 0, _pos select 1, 200];
	
		_vehicle = (_item select 0) createVehicle [0, 0, 0];
		_vehicle setPos _pos;
		[objNull, _vehicle] call BIS_fnc_curatorObjectEdited;
	
		_price call FNC_subMoney;
		playSound "bought";
	};
};

SHOP_buyWeapon = {
	params ["_id"];
	_weapon = (1 / (chaosLevel - 0.15)) call FNC_SW_weapons select _id;
	_price = round (_weapon select 1) * 1000;
	
	if (_price call SHOP_canBuy) then {
		call TRADER_lastCrate addWeaponCargoGlobal [_weapon select 0, 1];
		_price call FNC_subMoney;
		playSound "bought";
	};
};

SHOP_buyAmmo = {
	params ["_id"];
	_weapon = (1 / (chaosLevel - 0.15)) call FNC_SW_weapons select _id;
	_price = round (((_weapon select 1) * 1000) / 8);
	
	if (_price call SHOP_canBuy) then {
		call TRADER_lastCrate addMagazineCargoGlobal [(_weapon select 0) call SHOP_ammoType, 1];
		_price call FNC_subMoney;
		playSound "bought";
	};
};


SHOP_sightPicture = {
	params ["_class"];
	getText (configFile >> "CfgWeapons" >> _class >> "picture")
};

SHOP_vehiclePicture = {
	params ["_class"];
	getText (configFile >> "CfgVehicles" >> _class >> "picture")
};

SHOP_ammoType = {
	params ["_weapon"];
	getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines") select 0
};

SHOP_weaponInit = {
	_dialog = uiNameSpace getVariable "shopWeapon";
	
	_items = (1 / (chaosLevel - 0.15)) call FNC_SW_weapons;
	_count = count _items;
	
	for "_i" from 0 to _count - 1 do {
		_item = _items select _i;
		_price = round (_item select 1) * 1000;
		_priceAmmo = round (_price / 8);
		
		(_dialog displayCtrl 1200 + _i) ctrlSetText ((_item select 0) call SHOP_sightPicture);
		(_dialog displayCtrl 1600 + _i) ctrlSetText Format ["%1$", _price];
		(_dialog displayCtrl 1625 + _i) ctrlSetText Format ["%1$", _priceAmmo];
	};
	
	// DISABLE OTHER
	for "_i" from _count to 24 do {
		(_dialog displayCtrl 1200 + _i) ctrlShow False;
		(_dialog displayCtrl 1600 + _i) ctrlShow False;
		(_dialog displayCtrl 1625 + _i) ctrlShow False;
	};
};

SHOP_sightInit = {
	_dialog = uiNameSpace getVariable "shopSight";
	
	_items = (1 / (chaosLevel - 0.15)) call FNC_SW_sights;
	_count = count _items;
	
	for "_i" from 0 to _count - 1 do {
		_item = _items select _i;
		(_dialog displayCtrl 1200 + _i) ctrlSetText ((_item select 0) call SHOP_sightPicture);
		(_dialog displayCtrl 1600 + _i) ctrlSetText Format ["%1$", round (_item select 1) * 1000];
	};
	
	// DISABLE OTHER
	for "_i" from _count to 24 do {
		(_dialog displayCtrl 1200 + _i) ctrlShow False;
		(_dialog displayCtrl 1600 + _i) ctrlShow False;
		(_dialog displayCtrl 1623 + _i) ctrlShow False;
	};
};

SHOP_itemsInit = {
	_dialog = uiNameSpace getVariable "shopItems";
	
	_items = shopItemsContent;
	_count = count _items;
	
	for "_i" from 0 to _count - 1 do {
		_item = _items select _i;
		(_dialog displayCtrl 1200 + _i) ctrlSetText ((_item select 0) call SHOP_sightPicture);
		(_dialog displayCtrl 1600 + _i) ctrlSetText Format ["%1$", _item select 1];
	};
	
	// DISABLE OTHER
	for "_i" from _count to 24 do {
		(_dialog displayCtrl 1200 + _i) ctrlShow False;
		(_dialog displayCtrl 1600 + _i) ctrlShow False;
		(_dialog displayCtrl 1623 + _i) ctrlShow False;
	};
};

SHOP_vehicleInit = {
	_dialog = uiNameSpace getVariable "shopVehicle";
	_count = count shopVehicleContent;
	
	for "_i" from 0 to _count - 1 do {
		_item = shopVehicleContent select _i;
		(_dialog displayCtrl 1200 + _i) ctrlSetText ((_item select 0) call SHOP_vehiclePicture);
		(_dialog displayCtrl 1600 + _i) ctrlSetText Format ["%1$", _item select 1];
	};
	
	// DISABLE OTHER
	for "_i" from _count to 19 do {
		(_dialog displayCtrl 1200 + _i) ctrlShow False;
		(_dialog displayCtrl 1600 + _i) ctrlShow False;
	};
};