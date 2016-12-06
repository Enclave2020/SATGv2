	// VEHICLE FIX
	tableRepair addAction [localize "str_SATGv2_actionRepair", {
		_vehicles = param [0] nearEntities [["Air", "Car", "Tank"], 7];
		if (count _vehicles == 0) exitWith {titleText [localize "str_SATGv2_repairNoVehicles", "PLAIN DOWN"];};
		_vehicles = _vehicles select {selectMax (getAllHitPointsDamage _x select 2) > 0};
		if (count _vehicles == 0) exitWith {titleText [localize "str_SATGv2_repairNoDamaged", "PLAIN DOWN"];};
		{[_x, 0] remoteExec ["setDammage"]} forEach _vehicles;
		titleText [localize "str_SATGv2_repairFixed", "PLAIN DOWN"];
	}];
	
	// PLAYER HEALTH
	tableHeal addAction [localize "str_SATGv2_actionHeal", {
		if (damage player == 0) exitWith {titleText [localize "str_SATGv2_healOkay", "PLAIN DOWN"];};
		player setDammage 0;
		titleText [localize "str_SATGv2_healFinished", "PLAIN DOWN"];
	}];
	
	// AMMO BOX
	ammoBox addAction [localize "str_SATGv2_actionAmmo", {
		if (Time - (missionNameSpace getVariable ["LastAmmo", 0]) < 1800) exitWith {titleText [localize "str_SATGv2_ammoTimeout", "PLAIN DOWN"];};
		if (random 1 < 0.7) exitWith {titleText [localize "str_SATGv2_ammoFail", "PLAIN DOWN"];};
		
		missionNameSpace setVariable ["LastAmmo", Time];
		_ammoType = (currentWeapon player) call SATGv2_Shop_fnc_ammoType;
		player addMagazine _ammoType;
		titleText [localize "str_SATGv2_ammoOkay", "PLAIN DOWN"];
	}];
	
	// SKIP TIME
	terminalBig addAction [localize "str_SATGv2_actionSkip", {
		if (ServerTime - (missionNameSpace getVariable ["LastSkip", 0]) < 1800) exitWith {titleText [localize "str_SATGv2_skipTimeout", "PLAIN DOWN"];};
		if (player != leader player) exitWith {titleText [Format [localize "str_SATGv2_skipNotLeader", name leader player], "PLAIN DOWN"];};

		missionNameSpace setVariable ["LastSkip", ServerTime, True];
		10 remoteExec ["skipTime", 2];
		titleText [localize "str_SATGv2_skipOkay", "PLAIN DOWN"];
	}];