VEH_Spawn = {
	_roads = [0, 0, 0] nearRoads 100000;

	_vehiclePool = ["C_Van_01_fuel_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_Offroad_01_F", "C_Offroad_01_repair_F", "C_Quadbike_01_F", "C_SUV_01_F", "C_Van_01_transport_F", "C_Van_01_box_F", "C_Truck_02_fuel_F", "C_Truck_02_transport_F", "C_Truck_02_covered_F"];
	
	for "_i" from 1 to 100 do {
		_vehicle = (selectRandom _vehiclePool) createVehicle position (selectRandom _roads);
		_vehicle setFuel random 0.7;
	};
};

if (isServer) then {
	if (objNull isEqualTo (profileNamespace getVariable ["SATGv2_Vehicles", objNull])) then {
		call VEH_Spawn;
	};
};