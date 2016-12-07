	_pos = position player;
	_pos = [_pos select 0, _pos select 1, 100];
	
	private ["_type", "_price"];
	switch (_this) do {
		case 0 : {_price = 3000; _type = "B_Quadbike_01_F";};
		case 1 : {_price = 8000; _type = "Box_NATO_Ammo_F";};
	};
	
	if (not (_price call SATGv2_Shop_fnc_canBuy)) exitWith {titleText [localize "str_SATGv2_dropNeedMoney", "PLAIN DOWN"];};
	_price call SATGv2_fnc_subMoney;
				
	_vehicle = _type createVehicle [0, 0, 0];
	_vehicle setPos _pos;
	[objNull, _vehicle] call BIS_fnc_curatorObjectEdited;
	
	if (_this == 1) then {
		clearMagazineCargoGlobal _vehicle;
		_ammo = (currentWeapon player) call SATGv2_Shop_fnc_ammoType;
		_vehicle addMagazineCargoGlobal [_ammo, 3];
	};

	titleText [localize "str_SATGv2_dropOkay", "PLAIN DOWN"];