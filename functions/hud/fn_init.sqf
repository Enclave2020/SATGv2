if (hasInterface) then {
	[] spawn {
		while {true} do {
			if (isNull (uiNameSpace getVariable ["SATGv2Hud", objNull])) then {1337 cutRsc ["SATGv2Hud","PLAIN"]};
			call SATGv2_Hud_fnc_update;
			sleep 2;
		};
	};
};