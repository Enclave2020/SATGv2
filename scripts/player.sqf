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
	
	[25, [false, true, false], {[] spawn FNC_repackMagazines}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
};