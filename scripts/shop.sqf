SHOP_itemInfo = {
	params ["_class", "_value"];
	_result = "";
	{
		_result = getText (configFile >> _x >> _class >> _value);
		if ("" != _result) exitWith {_result};
	} forEach ["CfgWeapons", "CfgVehicles"];
	
	_result
};

SHOP_loadItem = {
	params ["_index"];
	_item = shopsContent select shopIndex select _index;
	_dialog = uiNameSpace getVariable "shopUnified";
	
	_description = Format ["%1<br/>Cost: %2", [_item select 0, "descriptionShort"] call SHOP_itemInfo, _item select 1];
	if (shopIndex == 2) then {_description = Format ["%1<br/>Ammo cost: %2", _description, _item select 2]};
	
	(_dialog displayCtrl 1101) ctrlSetStructuredText parseText Format ["<t size='1.5' align='center'>%1</t>", [_item select 0, "displayName"] call SHOP_itemInfo];
	(_dialog displayCtrl 1100) ctrlSetStructuredText parseText _description;
	(_dialog displayCtrl 1200) ctrlSetText ([_item select 0, "picture"] call SHOP_itemInfo);
};

SHOP_canBuy = {
	params ["_price"];
	_money = profileNamespace getVariable ["SATGMoney", 0];
	_money >= _price
};

SHOP_ammoType = {
	params ["_weapon"];
	getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines") select 0
};

SHOP_buyVehicle = {
	params ["_type"];
	_pos = getMarkerPos "shopVehicleDrop";
	_pos = [_pos select 0, _pos select 1, 200];

	_vehicle = _type createVehicle [0, 0, 0];
	_vehicle setPos _pos;
	[objNull, _vehicle] call BIS_fnc_curatorObjectEdited;
	
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
};

SHOP_buyItem = {
	params ["_priceIndex"];
	
	_index = lbCurSel 1500;
	_item = shopsContent select shopIndex select _index;
	_type = getNumber (configFile >> "CfgWeapons" >> _item select 0 >> "type");
	
	if (_priceIndex == 2) then {_type = 0};
	if (shopIndex == 0) then {_type = 1337};
	
	_price = _item select _priceIndex;
	_crate = call TRADER_lastCrate;
	
	if (not (_price call SHOP_canBuy)) exitWith {};

	_class = _item select 0;
	switch (_type) do {
		case 1337 : {_class call SHOP_buyVehicle};
		case 0 : {_crate addMagazineCargoGlobal [_class call SHOP_ammoType, 1]};
		default {_crate addItemCargoGlobal [_class, 1]};
	};

	_price call FNC_subMoney;
	playSound "bought";	
};

SHOP_Init = {
	//shopIndex = 2;
	shopsContent = [
		// VEHICLES
		[["rhsusf_m1025_w", 1000],
		["rhsusf_m1025_w_m2", 3000],
		["rhsusf_m1025_w_mk19", 5000],
		["rhsusf_m113_usarmy", 7000],
		["rhsusf_M1117_W", 10000],
		["rhsusf_m113_usarmy_M240", 10000],
		["rhsusf_m113_usarmy_MK19", 13000],
		["RHS_M2A3_BUSKIII_wd", 20000],
		["rhsusf_m1a2sep1tuskiiwd_usarmy", 50000]],
		
		// ITEMS
		[["ItemCompass", 50],
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
		["V_PlateCarrierSpec_blk", 7000]],
		
		// WEAPONS
		((1 / (chaosLevel - 0.15)) call FNC_SW_weapons apply {[_x select 0, round ((_x select 1) * 1000), round ((_x select 1) * 125)]}),
		
		// SIGHTS
		((1 / (chaosLevel - 0.15)) call FNC_SW_sights apply {[_x select 0, round ((_x select 1) * 1000)]})
	];
	(shopsContent select 2) pushBack ["rhs_weap_M136", 500, 1E10];

	waitUntil {not (displayNull isEqualTo (uiNameSpace getVariable "shopUnified"))};
	{
		lbAdd [1500, [_x select 0, "displayName"] call SHOP_itemInfo];
		lbSetPicture [1500, _forEachIndex, [_x select 0, "picture"] call SHOP_itemInfo];
	} forEach (shopsContent select shopIndex);
	
	ctrlShow [1602, shopIndex == 2];
	lbSetCurSel [1500, 0];
};