	_position = call SATGv2_Events_fnc_position;
	_position = _position vectorAdd [0, 0, 200];
	//_vehicle = "B_Heli_Light_01_F" createVehicle (_position getPos (700, random 360));
	//[_position getPos [-1500, random 360], _position getPos [1500, random 360]