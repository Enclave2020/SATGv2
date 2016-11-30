	params ["_unit"];
	
	_weapons = (1 / chaosLevel) call SATGv2_RandomEquip_fnc_weapons;
	_weapon = _weapons select 0 select 0;
	
	_prob = call SATGv2_RandomEquip_fnc_random;
	_probUnit = _unit call SATGv2_RandomEquip_fnc_probUnit;
	{
		if ([_probUnit, _x select 1] call SATGv2_RandomEquip_fnc_probWeapon < _prob) then {_weapon = _x select 0};
	} forEach _weapons;
	
	removeAllWeapons _unit;
	_unit call SATGv2_RandomEquip_fnc_removeMagazines;
	
	_magazine = _weapon call SATGv2_RandomEquip_fnc_ammoType;
	for "_i" from 1 to 5 do {_unit addItemToVest _magazine};
	_unit addWeapon _weapon;
	
	if (random 1 > (1 - (chaosLevel * 0.5))) then {
		_unit addBackpack "B_AssaultPack_khk";
		_unit addWeapon "launch_NLAW_F";
		_unit addMagazines ["NLAW_F", 2];
	};
	
	if (random 1 > (1 - (chaosLevel * 0.7))) then {
		_unit addItem "FirstAidKit";
	};	
	
	if (random 1 > (1 - (chaosLevel * 0.5))) then {
		_unit addItem "MiniGrenade";
	};	