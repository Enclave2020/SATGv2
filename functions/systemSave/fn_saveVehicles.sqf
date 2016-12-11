	params ["_name"];
	_data = [];
	{
		_data pushBack [typeOf _x, getPosATL _x, _x call SATGv2_Save_fnc_saveDamage, direction _x, _x call SATGv2_Save_fnc_saveCargo, fuel _x, vectorUp _x, magazinesAllTurrets _x];
	} forEach call SATGv2_Save_fnc_vehicles;
	profileNamespace setVariable [_name + "_Vehicles", _data];