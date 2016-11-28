SHOP_itemInfo = {
	params ["_class", "_value"];
	_result = "";
	{
		_result = getText (configFile >> _x >> _class >> _value);
		if ("" != _result) exitWith {_result};
	} forEach ["CfgWeapons", "CfgVehicles", "CfgMagazines"];
	
	_result
};

SHOP_itemConfig = {
	params ["_type"];
	
	_result = "";
	{
		if (not isNull (configFile >> _x >> _type)) exitWith {_result = _x}; 
	} forEach ["CfgWeapons", "CfgVehicles", "CfgMagazines"];
	
	_result
};

SHOP_loadItem = {
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

	_isHeli = getNumber (configFile >> "CfgVehicles" >> _type >> "type") == 2;
	private ["_vehicle"];
	
	if (_isHeli) then {
		_pos = position heliSpawn findEmptyPosition [0, 20, _type];
		_vehicle = _type createVehicle _pos;
	} else {
		_vehicle = _type createVehicle [0, 0, 0];
		_vehicle setPos _pos;
		[objNull, _vehicle] call BIS_fnc_curatorObjectEdited;
	};

	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
};

SHOP_buyItem = {
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
};

SHOP_Update = {
	_shopsContent = [
	
		// VEHICLES
		[["B_Quadbike_01_F", 1000],
		["B_Truck_01_transport_F", 2000],
		["B_LSV_01_unarmed_F", 2000],
		["B_Truck_01_covered_F", 3000],
		["B_LSV_01_armed_F", 3000],
		["B_MRAP_01_F", 4000],
		["B_MRAP_01_hmg_F", 6000],
		["B_MRAP_01_gmg_F", 8000],
		["B_Heli_Light_01_F", 10000],
		["B_APC_Wheeled_01_cannon_F", 15000],
		["B_Heli_Transport_01_F", 15000],
		["B_APC_Tracked_01_rcws_F", 20000],
		["B_MBT_01_cannon_F", 50000]],
		
		// BACKPACKS
		[["B_AssaultPack_blk", 1000],
		["B_FieldPack_blk", 2000],
		["B_TacticalPack_blk", 3000],
		["B_Kitbag_rgr", 4000],
		["B_Carryall_oli", 5000],
		["B_Bergen_hex_F", 10000]],
		
		// ITEMS
		[["ItemCompass", 50],
		["SmokeShell", 50],
		["MiniGrenade", 100],
		["FirstAidKit", 150],
		["acc_flashlight", 250],
		["ItemMap", 500],
		["V_HarnessO_gry", 500],
		["NVGoggles_OPFOR", 1000],
		["bipod_02_F_blk", 1000],
		["ItemGPS", 1000],
		["ItemRadio", 1000],
		["V_TacVest_blk", 1000],
		["H_HelmetB_light", 1000],
		["B_IR_Grenade", 2000],
		["H_HelmetB", 2000],
		["V_PlateCarrier1_blk", 2000],
		["Rangefinder", 3000],
		["H_HelmetSpecB", 3000],
		["V_PlateCarrier2_blk", 4000],
		["V_PlateCarrierSpec_blk", 7000]],
		
		// WEAPONS
		((1 / (chaosLevel * 0.2)) call FNC_SW_weapons apply {[_x select 0, round ((_x select 1) * 1000), round ((_x select 1) * 125)]}),

		// SIGHTS
		((1 / (chaosLevel * 0.2)) call FNC_SW_sights apply {[_x select 0, round ((_x select 1) * 1000)]})
	];
	(_shopsContent select 2) pushBack ["launch_NLAW_F", 2000, 500];
	
	shopContent = [];
	{
		for "_i" from 0 to floor random count _x do {
			private "_item";
			waitUntil{
				_item = selectRandom _x;
				not (_item in shopContent);
			};
			shopContent pushBack _item;
		};
	} forEach _shopsContent;
	
	missionNamespace setVariable ["shopContent", shopContent, True];
};

SHOP_Init = {
	waitUntil {not (displayNull isEqualTo (uiNameSpace getVariable "shopUnified"))};
	{
		lbAdd [1500, [_x select 0, "displayName"] call SHOP_itemInfo];
		lbSetPicture [1500, _forEachIndex, [_x select 0, "picture"] call SHOP_itemInfo];
	} forEach shopContent;
	
	lbSetCurSel [1500, 0];
};

if (isServer) then {
	missionNamespace setVariable ["shopMul", 1, True];
	
	// UPDATE ASSORT
	[] spawn {
		while {true} do {
			call SHOP_Update;
			sleep 1800;
			["ShopInfo",["Ассортимент обновлен."]] remoteExec ["bis_fnc_showNotification"];
		};
	};
	
	// SALES
	[] spawn {
		while {true} do {
			sleep 1200;
			if (random 1 > 0.7) then {
				_sales = random 0.5;
				["ShopInfo",[Format ["Распродажа на 10 минут! -%1%%", _sales]]] remoteExec ["bis_fnc_showNotification"];
				missionNamespace setVariable ["shopMul", 1 - _sales, True];
				sleep 600;
				["ShopInfo",["Распродажа закончилась."]] remoteExec ["bis_fnc_showNotification"];
				missionNamespace setVariable ["shopMul", 1, True];
			};
		};
	};
};

if (hasInterface) then {
	trader addAction ["Trade", {createDialog "shopUnified"}];
};

// EVERYONE
[trader, "SIT3", "ASIS"] call BIS_fnc_ambientAnim;