	addMissionEventHandler ["Draw3D", { 
	 _enemy =  (player nearEntities ["Man", 50]) select {side _x == WEST}; 
	 { 
	  drawIcon3D ["\a3\ui_f\data\gui\cfg\hints\BasicLook_ca.paa", [1,1,1,0.5], ASLtoAGL eyePos _x, 1, 1, 1, "ENEMY", 1, 0.05, "PuristaMedium", "Center", True]; 
	 } forEach _enemy; 
	}];