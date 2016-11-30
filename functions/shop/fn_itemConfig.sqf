	params ["_type"];
	
	_result = "";
	{
		if (not isNull (configFile >> _x >> _type)) exitWith {_result = _x}; 
	} forEach ["CfgWeapons", "CfgVehicles", "CfgMagazines"];
	
	_result