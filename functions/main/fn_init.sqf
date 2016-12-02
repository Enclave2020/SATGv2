if (hasInterface) then {
	tf_no_auto_long_range_radio = True;
	waitUntil{player == player};
	
	//call SATGv2_fnc_campInit;
	//call FNC_friendlyFireInit;
	
	player addEventHandler ["Respawn", {
		//call FNC_friendlyFireInit;
		call SATGv2_DynamicMusic_fnc_eventInit;
		call SATGv2_fnc_campInit;
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
		"SATGv2" call SATGv2_Saves_fnc_Save;
	}];
	
	// HotKeys
	//[25, [false, false, false], {[] spawn SATGv2_fnc_shareMoney}] call CBA_fnc_addKeyHandler;
	//[25, [false, true, false], {[] spawn SATGv2_fnc_repackMagazines}] call CBA_fnc_addKeyHandler;
	//[46, [false, true, false], {[] spawn SATGv2_fnc_makeCamp}] call CBA_fnc_addKeyHandler;
	[25, [false, false, false], {createDialog "SATGv2Menu"}] call CBA_fnc_addKeyHandler;
	
	// Silent mode
	enableSentences False;
};

if (isServer) then {
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
};