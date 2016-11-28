FNC_GW_SaveCargo = {
	params ["_vehicle"];
	[getWeaponCargo _vehicle, getMagazineCargo _vehicle, getItemCargo _vehicle, getBackpackCargo _vehicle]
};

FNC_GW_LoadCargoItem = {
	params ["_cargo", "_type", "_item"];
	[_cargo select _type select 0 select _item, _cargo select _type select 1 select _item];
};

FNC_GW_LoadCargoItemCount = {
	params ["_cargo", "_type"];
	count (_cargo select _type select 0) - 1
};

FNC_GW_ClearCargo = {
	params ["_vehicle"];

	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
};

FNC_GW_LoadCargo = {
	params ["_vehicle", "_cargo"];
	
	_vehicle call FNC_GW_ClearCargo;
	for "_i" from 0 to ([_cargo, 0] call FNC_GW_LoadCargoItemCount) do {_vehicle addWeaponCargoGlobal ([_cargo, 0, _i] call FNC_GW_LoadCargoItem)};
	for "_i" from 0 to ([_cargo, 1] call FNC_GW_LoadCargoItemCount) do {_vehicle addMagazineCargoGlobal ([_cargo, 1, _i] call FNC_GW_LoadCargoItem)};
	for "_i" from 0 to ([_cargo, 2] call FNC_GW_LoadCargoItemCount) do {_vehicle addItemCargoGlobal ([_cargo, 2, _i] call FNC_GW_LoadCargoItem)};
	for "_i" from 0 to ([_cargo, 3] call FNC_GW_LoadCargoItemCount) do {_vehicle addBackPackCargoGlobal ([_cargo, 3, _i] call FNC_GW_LoadCargoItem)};
};

FNC_GW_SaveDamage = {
	params ["_vehicle"];
	_hitpoints = getAllHitPointsDamage _vehicle;
	if (count _hitpoints == 0) exitWith {[0]};
	_hitpoints select 2
};

FNC_GW_LoadDamage = {
	params ["_vehicle", "_data"];
	for "_i" from 0 to (count _data) - 1 do {_vehicle setHitIndex [_i, (_data select _i)]};
};

FNC_GW_SaveVehicles = {
	params ["_name"];
	_data = [];
	{_data pushBack [typeOf _x, getPosATL _x, _x call FNC_GW_SaveDamage, direction _x, _x call FNC_GW_SaveCargo, fuel _x, vectorUp _x]} forEach call FNC_GW_vehicles;
	profileNamespace setVariable [_name + "_Vehicles", _data];
};

FNC_GW_VehicleDestroyed = {
	_destroyed = True;
	{if (_x != 1) exitWith {_destroyed = False}} forEach _this;
	_destroyed
};

FNC_GW_vehicles = {
	vehicles select {(_x isKindOf "Car") or (_x isKindOf "Air") or (_x isKindOf "Tank")}
};

FNC_GW_LoadVehicles = {
	params ["_name", "_remove"];
	
	if (objNull isEqualTo (profileNamespace getVariable [_name + "_Vehicles", objNull])) exitWith {"SAVES: Server saves not found" remoteExec ["systemChat"]};
	
	_data = profileNamespace getVariable _name + "_Vehicles";
	if (count _data == 0) exitWith {};
	
	if (_remove) then {{deleteVehicle _x} forEach call FNC_GW_vehicles};
	{
			if (not ((_x select 2) call FNC_GW_VehicleDestroyed)) then {	
				_vehicle = createVehicle [_x select 0, _x select 1, [], 0, "CAN_COLLIDE"];
				[_vehicle, _x select 2] call FNC_GW_LoadDamage;		
				_vehicle setDir (_x select 3);
				[_vehicle, _x select 4] call FNC_GW_LoadCargo;
				_vehicle setFuel (_x select 5);
				_vehicle setVectorUp (_x select 6);
			};
	} forEach _data;
};

FNC_GW_SavePlayer = {
	params ["_name"];
	
	if (!alive player) exitWith {};
	
	_data = [getPosATL player, damage player, direction player, getUnitLoadout player, player getVariable ["Food", [0, 0]], player getVariable ["temperature", 36], player getVariable ["far_isunconscious", 0] == 1];
	profileNamespace setVariable [_name + "_Player", _data];
};

FNC_GW_LoadPlayer = {
	params ["_name"];	

	_data = profileNamespace getVariable _name + "_Player";
	
	player setPosATL (_data select 0);
	player setDammage (_data select 1);
	player setDir (_data select 2);
	player setUnitLoadout (_data select 3);
	player setVariable ["Food", (_data select 4)];
	player setVariable ["temperature", (_data select 5)];
	
	if (isMultiplayer) then {
		if (_data select 6) then {[player, objNull] spawn FAR_Player_Unconscious};
	};
	
	if (uniform player == "") then {player forceAddUniform "U_BG_Guerrilla_6_1"};
};

FNC_GW_SaveWorld = {
	params ["_name"];
	
	_clearedSectors = (units groupLogic) select {_x getVariable "Cleaned"} apply {_x getVariable "Name"};
	_respawnPoints = missionNamespace getVariable ["SATGv2Respawns", []];
	profileNamespace setVariable [_name + "_World", [date, overcast, _clearedSectors, chaosLevel, _respawnPoints]];
};

FNC_GW_Save = {
	params ["_name"];
	if (hasInterface) then {_name call FNC_GW_SavePlayer};
	if (isServer) then {
		_name call FNC_GW_SaveVehicles;
		_name call FNC_GW_SaveWorld;
	};
};

FNC_GW_Load = {
	params ["_name", ["_remove", False]];
	if (hasInterface) then {_name call FNC_GW_LoadPlayer};	
	if (isServer) then {
		[_name, _remove] call FNC_GW_LoadVehicles;
		_worldSave = profileNamespace getVariable [GW_SaveName + "_World", [0, 0, [], 0.2, []]];
		missionNamespace setVariable ["chaosLevel", _worldSave param [3], True];
		
		_respawnPoints = _worldSave param [4];
		missionNamespace setVariable ["SATGv2Respawns", _respawnPoints, True];
		{
			[missionNamespace, _x] call BIS_fnc_addRespawnPosition;
			"_cwa_lamp" createVehicle _x;
		} forEach _respawnPoints;
	};
};