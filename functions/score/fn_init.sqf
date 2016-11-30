	{
		_x addEventHandler ["killed", {call FNC_Score_Increase}];
		_x setVariable ["scoreInited", True];
	} foreach (allUnits select {side _x == WEST and (not (_x getVariable ["scoreInited", False]))});	