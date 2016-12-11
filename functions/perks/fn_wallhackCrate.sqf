	[] spawn {
		while {true} do {
			whPoolCrate = (player nearEntities ["B_CargoNet_01_ammo_F", 200]);
			sleep 1;
		}
	};

	addMissionEventHandler ["Draw3D", { 
		{
			drawIcon3D ["\a3\ui_f\data\gui\cfg\CommunicationMenu\supplydrop_ca.paa", [1, 1, 1, 0.66], position _x, 0.7, 0.7, 0]; 	
		} forEach whPoolCrate;
	}];	