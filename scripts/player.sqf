if (hasInterface) then {
	waitUntil{player == player};
	player addEventHandler ["Respawn", {
		deleteVehicle param [1];
		player setVariable ["temperature", 36];
		player setUnitLoadout [["SMG_01_F","","","",["30Rnd_45ACP_Mag_SMG_01",30],[],""],[],[],["rhs_uniform_vdv_emr",[["FirstAidKit",1],["30Rnd_45ACP_Mag_SMG_01",30,3]]],[],[],"","",[],["ItemMap","","","","",""]];
	}];
	
	addMissionEventHandler ["PlayerDisconnected", {
		deleteVehicle player;
	}];
	
	player addEventHandler ["HandleDamage", {
		_returnDamage = (_this select 2);
		if ((side (_this select 0)) isEqualTo (side (_this select 3))) then
		{
			_returnDamage = 0;
		};
		_returnDamage
	}];
};