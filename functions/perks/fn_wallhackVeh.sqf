	[] spawn {
		while {true} do {
			whPoolVeh = (player nearEntities [["Car", "Tank"], 200]);
			sleep 1;
		}
	};

	addMissionEventHandler ["Draw3D", { 
		{
			drawIcon3D ["\a3\ui_f\data\gui\cfg\CommunicationMenu\defend_ca.paa", [1, 1, 1, 0.66], position _x, 1, 1, 0]; 	
		} forEach whPoolVeh;
	}];	