	params ["_side"];
	{
		if (_x == leader _x) then {_x setSkill 1};
		_x call SATGv2_RandomEquip_fnc_randomWeapon;
		_x call SATGv2_RandomEquip_fnc_randomSight;
		_x setVariable ["Randomized", True];
	} forEach (allUnits select {side _x == _side and (not (_x getVariable ["Randomized", False]))});