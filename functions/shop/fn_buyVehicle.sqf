	params ["_type"];
	_pos = getMarkerPos "shopVehicleDrop";
	_pos = [_pos select 0, _pos select 1, 200];

	_isHeli = getNumber (configFile >> "CfgVehicles" >> _type >> "type") == 2;
	private ["_vehicle"];
	
	if (_isHeli) then {
		_pos = position heliSpawn findEmptyPosition [0, 20, _type];
		_vehicle = _type createVehicle _pos;
	} else {
		_vehicle = _type createVehicle [0, 0, 0];
		_vehicle setPos _pos;
		[objNull, _vehicle] call BIS_fnc_curatorObjectEdited;
	};

	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;