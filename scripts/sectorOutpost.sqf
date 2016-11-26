	_data = [["Land_Mil_Barracks",26.4066,15.5547,192.394],["Land_Mil_Guardhouse",34.6789,93.0778,283.937],["RU_WarfareBVehicleServicePoint",37.1138,56.3133,191.268]];
	
	params ["_logic"];
	_spawned = [];
	{
		_object = _x param [0] createVehicle (_logic getPos [_x param [1], _x param [2]]);
		_object setDir (_x param [3]);
		_spawned pushBack _object;
	} forEach _data;
	_spawned