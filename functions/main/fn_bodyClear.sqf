	{
		if (Time - (_x getVariable ["DeathTime", 0]) > 1800) exitWith {deleteVehicle _x};
	} forEach (allDeadMen select {(_x getVariable ["DeathTime", 0]) > 0});