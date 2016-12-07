if (hasInterface) then {
	if (call SATGv2_fnc_tfarInstalled) then {
		tf_no_auto_long_range_radio = True;
		tf_same_sw_frequencies_for_side = True;
	};
	
	waitUntil{player == player};
	
	//call SATGv2_fnc_campInit;
	//call FNC_friendlyFireInit;
	
	player addEventHandler ["Respawn", {
		//call FNC_friendlyFireInit;
		call SATGv2_DynamicMusic_fnc_eventInit;
		call SATGv2_fnc_campInit;
		player setVariable ["temperature", 36];
		player setUnitLoadout [["hgun_PDW2000_F","","","",["30Rnd_9x21_Mag",29],[],""],[],[],["U_BG_Guerrilla_6_1",[["FirstAidKit",1],["30Rnd_9x21_Mag",2,30]]],[],[],"","",[],["ItemMap","","","ItemCompass","",""]];
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
	[25, [false, false, false], {if (not dialog) then {createDialog "SATGv2Menu"}}] call CBA_fnc_addKeyHandler;
	
	// Silent mode
	enableSentences False;
	
	// Health to 100%
	player addEventHandler ["HandleHeal", {
		_this spawn {
			_injured = _this select 0;
			_healer = _this select 1;
			_damage = damage _injured;
			waitUntil {damage _injured != _damage};
			if (damage _injured < _damage) then {
				_injured setDamage 0;
			};
		};
	}];
	
	// Bravo camp init
	call SATGv2_fnc_bravoInit;
	
	// PARA DROPS
	[player, "Quad"] call BIS_fnc_addCommMenuItem;
	[player, "Ammo"] call BIS_fnc_addCommMenuItem;
	//[player, "Art"] call BIS_fnc_addCommMenuItem;
};

if (isServer) then {
	// Remove body on disconnect
	addMissionEventHandler ["HandleDisconnect", {
		deleteVehicle param[0];
	}];
		
	// Money every hour
	[] spawn {
		while {true} do {
			sleep 3600;
			2000 remoteExec ["SATGv2_fnc_addMoney"];
		};
	};
};