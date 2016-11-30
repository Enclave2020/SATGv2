	params ["_name"];
	
	if (isServer) then {	
		{deleteVehicle _x} forEach vehicles;
		profileNamespace setVariable [_name + "_Vehicles", nil];
		profileNamespace setVariable [_name + "_World", nil];
		call VEH_Spawn;
		
		"restart" call BIS_fnc_endMissionServer;
	};
	
	if (hasInterface) then {
		profileNamespace setVariable ["SATGMoney", nil];
		profileNamespace setVariable [_name + "_Player", nil];
		endMission "restart";
	};