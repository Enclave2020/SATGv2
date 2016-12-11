	/*
	params ["_pos"];
	[7291.09, 18555.1, 1.83597]
	"B_MBT_01_mlrs_F"
	
	
	_pos = [(_pos select 0) + (random 6) - 3, (_pos select 1) + (random 6) - 3, 200];
	//sleep 1;
	for "_i" from 1 to 16 do {
		_vehicle = "Cluster_120mm_AMOS" createVehicle _pos;
		sleep 0.5;
		_vehicle setVelocity [0, 0, -500];
	};
	
	titleText [localize "str_SATGv2_dropArtFire", "PLAIN DOWN"];
	*/