	[] spawn {
		while {true} do {
			whPoolMan = (player nearEntities ["Man", 20]) select {side _x == WEST};
			sleep 1;
		}
	};

	addMissionEventHandler ["Draw3D", { 
		{
			drawIcon3D ["\a3\ui_f\data\gui\cfg\Cursors\hc_overmission_gs.paa", [1, 1, 1, 0.66], ASLtoAGL eyePos _x, 0.7, 0.7, 0]; 	
		} forEach whPoolMan;
	}];	