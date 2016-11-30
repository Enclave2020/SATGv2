	params ["_unit"];
	_sight = "none";
	
	_prob = call SATGv2_RandomEquip_fnc_random;
	_probUnit = _unit call SATGv2_RandomEquip_fnc_probUnit;
	
	{
		if ([_probUnit, _x select 1] call SATGv2_RandomEquip_fnc_probWeapon < _prob) then {_sight = _x select 0};
	} forEach ((1 / chaosLevel) call SATGv2_RandomEquip_fnc_sights);
	
	if (_sight != "none") then {_unit addPrimaryWeaponItem _sight};