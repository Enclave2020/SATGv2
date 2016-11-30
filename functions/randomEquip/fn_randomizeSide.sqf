	params ["_side"];
	{
		if (_x == leader _x) then {_x setSkill 1};
		_x call FNC_SW_RandomWeapon;
		_x call FNC_SW_RandomSight;
		_x setVariable ["Randomized", True];
	} forEach (allUnits select {side _x == _side and (not (_x getVariable ["Randomized", False]))});