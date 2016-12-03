if (isServer) then {
	[] spawn {
		while {true} do {
			sleep 3600;
			if (random 1 > 0.6) then {
				[] call SATGv2_Quest_fnc_startRandom;
			};
		};
	};
};