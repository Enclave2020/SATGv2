	params ["_logic"];
	
	if (_logic getVariable ["buildingsSpawned", False]) then {
		_buildings = _logic getVariable ["sectorBuildings", []];
		{deleteVehicle _x} forEach _buildings;
		_group = _logic getVariable ["sectorGroup", nil];
		{
			if (vehicle _x != _x) then {deleteVehicle vehicle _x};
			deleteVehicle _x;
		} forEach units _group;
		deleteGroup _group;
		
		_logic setVariable ["sectorGroup", nil];		
		_logic setVariable ["sectorBuildings", nil];
		_logic setVariable ["buildingsSpawned", nil];
	};
	
	call SATGv2_fnc_bodyClear;