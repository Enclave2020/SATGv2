	{
		_x addEventHandler ["killed", {call SATGv2_Score_fnc_increase}];
		_x setVariable ["scoreInited", True];
	} foreach (allUnits select {side _x == WEST and (not (_x getVariable ["scoreInited", False]))});	