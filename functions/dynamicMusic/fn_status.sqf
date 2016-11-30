	while {true} do {
		if (DM_State == DM_State_Combat) then {
			if (time > combatDecay) then {
				DM_State = DM_State_Safe;
			};
		};

		sleep 1;
	};