	if (isServer) then {
		["SATGv2", True] call SATGv2_Save_fnc_load;
		[] spawn SATGv2_Save_fnc_autoSave;
	};
	
	if (hasInterface) then {
		[] spawn {
			["SATGv2", True] call SATGv2_Save_fnc_load;
			[] spawn SATGv2_Save_fnc_autoSave;
		};
	};