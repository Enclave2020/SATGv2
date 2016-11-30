	params ["_unit"];
	_sight = "none";
	
	_prob = call FNC_SW_Random;
	_probUnit = _unit call FNC_SW_ProbUnit;
	
	{
		if ([_probUnit, _x select 1] call FNC_SW_ProbWeap < _prob) then {_sight = _x select 0};
	} forEach ((1 / chaosLevel) call FNC_SW_sights);
	
	if (_sight != "none") then {_unit addPrimaryWeaponItem _sight};