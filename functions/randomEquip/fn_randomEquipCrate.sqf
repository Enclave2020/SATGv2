	params ["_position", "_grade"];
	
	_items = _grade call SATGv2_RandomEquip_fnc_randomEquip;
	
	_crate = "B_CargoNet_01_ammo_F" createVehicle _position;
	
	clearItemCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	
	{_crate addWeaponCargoGlobal [_x, 1]} forEach (_items select 0);
	{_crate addItemCargoGlobal [_x, 1]} forEach (_items select 1);
	{_crate addItemCargoGlobal [_x, 1]} forEach (_items select 2);

	_crate