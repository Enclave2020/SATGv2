	previousBehaviour = DM_State;
	
	while {true} do {
		if (DM_State != previousBehaviour) then {
			if (DM_State == DM_State_Combat) then {
				call FNC_DM_NextMusic;
				2 fadeMusic 0.6;
			} else {
				3 fadeMusic 0;
			};
		};
		previousBehaviour = DM_State;
		sleep 1;
	};