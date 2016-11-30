	params ["_unit"];
	
	_weapons = (1 / chaosLevel) call FNC_SW_weapons;
	_weapon = _weapons select 0 select 0;
	
	_prob = call FNC_SW_Random;
	_probUnit = _unit call FNC_SW_ProbUnit;
	{
		if ([_probUnit, _x select 1] call FNC_SW_ProbWeap < _prob) then {_weapon = _x select 0};
	} forEach _weapons;
	
	removeAllWeapons _unit;
	_unit call FNC_SW_RemoveMagazines;
	
	_magazine = _weapon call FNC_SW_AmmoType;
	for "_i" from 1 to 5 do {_unit addItemToVest _magazine};
	_unit addWeapon _weapon;
	
	if (random 1 > (1 - (chaosLevel * 0.7))) then {
		_unit addBackpack "B_AssaultPack_khk";
		_unit addWeapon "launch_NLAW_F";
		_unit addMagazines ["NLAW_F", 2];
	};