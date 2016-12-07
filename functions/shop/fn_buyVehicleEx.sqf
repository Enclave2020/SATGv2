	params ["_type"];
	_isHeli = getNumber (configFile >> "CfgVehicles" >> _type >> "type") == 2;
	
	if (not _isHeli) then {
		titleText [localize "str_SATGv2_shopVehiclePoint", "PLAIN DOWN"];
		_type onMapSingleClick "if (_shift) then {openMap False; [_this, _pos] call SATGv2_Shop_fnc_buyVehicle; onMapSingleClick ''}";
		openMap True;
	} else {
		[_type, [0, 0, 0]] call SATGv2_Shop_fnc_buyVehicle;
	};