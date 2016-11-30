	params ["_prob", "_pool", "_weapon"];
	{
		if ([1, _x select 1] call FNC_SW_ProbWeap < _prob) then {_weapon = _x select 0};
	} forEach _pool;
	
	_weapon