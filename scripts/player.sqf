if (hasInterface) then {
	player addEventHandler ["Respawn", {
		deleteVehicle param [1];
		player setVariable ["temperature", 36];
		player setUnitLoadout [["SMG_01_F","","","",["30Rnd_45ACP_Mag_SMG_01",30],[],""],[],[],["rhs_uniform_vdv_emr",[["FirstAidKit",1],["30Rnd_45ACP_Mag_SMG_01",30,3]]],[],[],"","",[],["ItemMap","","","","",""]];
	}];
	
	addMissionEventHandler ["PlayerDisconnected", {
		deleteVehicle player;
	}];
};