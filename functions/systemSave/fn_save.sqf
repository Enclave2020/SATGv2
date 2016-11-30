	params ["_name"];
	if (hasInterface) then {_name call SATGv2_Save_fnc_savePlayer};
	if (isServer) then {
		_name call SATGv2_Save_fnc_saveVehicles;
		_name call SATGv2_Save_fnc_saveWorld;
	};