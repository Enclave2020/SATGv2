if (isServer) then {
	[] spawn {
		while {true} do {
			sleep 2700;
			call SATGv2_Events_fnc_start;
		};
	};
};