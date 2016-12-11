	_position = call SATGv2_Events_fnc_position;
	_vehicles = ["B_Heli_Light_01_F", "B_Heli_Transport_01_F"];
	[_position getPos [-1500, random 360], _position getPos [1500, random 360], 100, "FULL", selectRandom _vehicles, WEST] call BIS_fnc_ambientFlyby;