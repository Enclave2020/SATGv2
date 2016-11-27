TRADER_group = {
	_traderGroup = allGroups select {_x getVariable ["Traders", False]};
	if (count _traderGroup == 0) then {
		_traderGroup = createGroup CIVILIAN;
		_traderGroup setVariable ["Traders", True, True];
	} else {_traderGroup = _traderGroup select 0};
	
	_traderGroup setBehaviour "CARELESS";
	_traderGroup
};

TRADER_addWeaponToCrate = {
	params ["_trader"];
	_crate = _trader getVariable "TraderCrate";
};

TRADER_lastCrate = {
	LastTrader getVariable "TraderCrate"
};

TRADER_create = {
	params ["_position", "_actionCode", "_crate"];
	
	_unit = call TRADER_group createUnit ["C_man_1", _position, [], 0, "NONE"];
	_unit disableAI "FSM";
	_unit disableAI "MOVE";
	_unit setUnitLoadout [[],[],[],["U_BG_Guerilla2_1",[]],["V_PlateCarrier2_blk",[]],[],"","",[],["","","","","ItemWatch",""]];
	_unit setVariable ["TraderAction", _actionCode, True];
	_unit setVariable ["TraderCrate", _crate, True];
	
	if (not (_crate isEqualTo objNull)) then {
		_unit setDir ([_unit, _crate] call BIS_fnc_relativeDirTo)
	};
	
	_unit allowDamage False;
	//_unit switchMove "Acts_AidlPercMstpSnonWnonDnon_warmup_1_loop";
	//_unit switchMove "HubBriefing_lookAround1";
	
	// [this,"SIT3","LIGHT",sit_table_2] call BIS_fnc_ambientAnim;
};

TRADER_addActions = {
	{
		_code = _x getVariable "TraderAction";
		_code = compile (_code + " LastTrader = param [0]; createDialog 'shopUnified';");
		_x addAction ["Trade", _code];
		_x switchMove "HubBriefing_lookAround1";
	} forEach (units call TRADER_group);
};

if (isServer) then {
	[weaponShop buildingPos 12, "shopIndex = 2;", weaponShopCrate] call TRADER_create;
	[sightShop buildingPos 6, "shopIndex = 3;", sightShopCrate] call TRADER_create;
	[vehicleShop buildingPos 4, "shopIndex = 0;", objNull] call TRADER_create;
	[itemsShop buildingPos 7, "shopIndex = 1;", itemsShopCrate] call TRADER_create;
};

if (hasInterface) then {
	call TRADER_addActions;
};