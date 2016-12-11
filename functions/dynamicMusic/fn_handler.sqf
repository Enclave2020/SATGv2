	previousBehaviour = DM_State;
	
	while {true} do {
		if (DM_State != previousBehaviour) then {
			if (DM_State == DM_State_Combat) then {
				call SATGv2_DynamicMusic_fnc_nextMusic;
				2 fadeMusic 0.5;
			} else {
				3 fadeMusic 0;
			};
		};
		previousBehaviour = DM_State;
		sleep 1;
	};