FNC_campCreate = {
	params ["_object"];
	waitUntil{
		sleep 0.1; 
		_vel = velocity _object;
		_speed = ((_vel select 0) + (_vel select 1) + (_vel select 2));
		_speed == 0
	};
	
	[missionNamespace, position _object] call BIS_fnc_addRespawnPosition;
	"_cwa_lamp" createVehicle position _object;
	_respawnPoints = missionNamespace getVariable ["SATGv2Respawns", []];
	_respawnPoints pushBack position _object;
	
	missionNamespace setVariable ["SATGv2Respawns", _respawnPoints, True];
	["SpawnCreated"] remoteExec ["bis_fnc_showNotification"];
};

FNC_campInit = {
	player addEventHandler ["Fired", {
		if (typeOf param[6] == "B_IRStrobe") then {
			[param[6]] spawn FNC_campCreate;
		};
	}];
};

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
	
	call FNC_campInit;
	
	player addEventHandler ["Respawn", {
		call FNC_DM_eventInit;
		call FNC_campInit;
		player setVariable ["temperature", 36];
		player setUnitLoadout [["SMG_01_F","","","",["30Rnd_45ACP_Mag_SMG_01",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["FirstAidKit",1],["30Rnd_45ACP_Mag_SMG_01",30,3]]],[],[],"","",[],["ItemMap","","","","",""]];
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
	
	// HotKeys
	[25, [false, false, false], {[] spawn FNC_shareMoney}] call CBA_fnc_addKeyHandler;
	[25, [false, true, false], {[] spawn FNC_repackMagazines}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
};