	params ["_vehicle", "_cargo"];
	
	_vehicle call SATGv2_Save_fnc_clearCargo;
	for "_i" from 0 to ([_cargo, 0] call SATGv2_Save_fnc_loadCargoItemCount) do {_vehicle addWeaponCargoGlobal ([_cargo, 0, _i] call SATGv2_Save_fnc_loadCargoItem)};
	for "_i" from 0 to ([_cargo, 1] call SATGv2_Save_fnc_loadCargoItemCount) do {_vehicle addMagazineCargoGlobal ([_cargo, 1, _i] call SATGv2_Save_fnc_loadCargoItem)};
	for "_i" from 0 to ([_cargo, 2] call SATGv2_Save_fnc_loadCargoItemCount) do {_vehicle addItemCargoGlobal ([_cargo, 2, _i] call SATGv2_Save_fnc_loadCargoItem)};
	for "_i" from 0 to ([_cargo, 3] call SATGv2_Save_fnc_loadCargoItemCount) do {_vehicle addBackPackCargoGlobal ([_cargo, 3, _i] call SATGv2_Save_fnc_loadCargoItem)};