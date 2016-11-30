	params ["_class", "_value"];
	_result = "";
	{
		_result = getText (configFile >> _x >> _class >> _value);
		if ("" != _result) exitWith {_result};
	} forEach ["CfgWeapons", "CfgVehicles", "CfgMagazines"];
	
	_result