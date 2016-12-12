	params ["_type", "_pos"];
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
	
	// TRACKER
	_vehicle spawn {
		_marker = createMarker [str random 1000, position _this];
		_marker setMarkerText ([typeOf _this, "displayName"] call SATGv2_Shop_fnc_itemInfo);
		_marker setMarkerType "respawn_motor";
		while {(position _this select 2) > 1} do {
			_marker setMarkerPos position _this;
			sleep 1;
		};
	};
	
	// UAV
	_isUAV = getNumber (configFile >> "CfgVehicles" >> _type >> "isUav") == 1;
	if (_isUAV) then {
		createVehicleCrew _vehicle;
	};
	
	titleText [localize "str_SATGv2_shopVehicleDroped", "PLAIN DOWN"];