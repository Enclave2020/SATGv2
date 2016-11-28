FNC_repackMagazines = {
	player playAction "PutDown";
	
	_current = currentMagazine player;
	_magazines = magazinesAmmo player select {_x select 0 == _current};
	_maxBullets = getNumber (configFile >> "CfgMagazines" >> _current >> "count");
	_bullets = 0;
	{_bullets = _bullets + (_x select 1)} forEach _magazines;
	
	_fullMagazines = floor (_bullets / _maxBullets);
	_lastMagazine = _bullets % _maxBullets;
	
	player removeMagazines _current;
	player addMagazines [_current, _fullMagazines];
	if (_lastMagazine > 0) then {player addMagazine [_current, _lastMagazine]};
	
	hint "Ammo repacked";
	sleep 2;
	hint "";
};

FNC_shareMoneyServer = {
	params ["_object"];
	1000 remoteExec ["FNC_addMoney", owner _object];
};

FNC_shareMoney = {
	_moneyPlayer = profileNamespace getVariable ["SATGMoney", 0];
	if (_moneyPlayer < 1000) exitWith {};
	if (not isPlayer cursorObject) exitWith {};
	
	cursorObject remoteExec ["FNC_shareMoneyServer", 2];
	1000 call FNC_subMoney;
};

if (hasInterface) then {
	waitUntil{player == player};
	player addEventHandler ["Respawn", {
		call FNC_DM_eventInit;
		player setVariable ["temperature", 36];
		player setUnitLoadout [["SMG_01_F","","","",["30Rnd_45ACP_Mag_SMG_01",30],[],""],[],[],["rhs_uniform_vdv_emr",[["FirstAidKit",1],["30Rnd_45ACP_Mag_SMG_01",30,3]]],[],[],"","",[],["ItemMap","","","","",""]];
	}];

	player addEventHandler ["HandleDamage", {
		_returnDamage = (_this select 2);
		if ((side (_this select 0)) isEqualTo (side (_this select 3))) then
		{
			_returnDamage = 0;
		};
		_returnDamage
	}];
	
	addMissionEventHandler ["PlayerDisconnected", {
		GW_SaveName call FNC_GW_Save;
	}];
	
	[25, [false, false, false], {[] spawn FNC_shareMoney}] call CBA_fnc_addKeyHandler;
	[25, [false, true, false], {[] spawn FNC_repackMagazines}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
};