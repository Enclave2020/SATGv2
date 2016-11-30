if (hasInterface) then {
	waitUntil{player == player};
	
	call FNC_campInit;
	//call FNC_friendlyFireInit;
	
	player addEventHandler ["Respawn", {
		//call FNC_friendlyFireInit;
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
	[46, [false, true, false], {[] spawn TEMP_makeCamp}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
};