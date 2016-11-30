	params ["_logic"];
	
	if (_logic getVariable ["cleaned", False]) exitWith {};
	
	if (not (_logic getVariable ["buildingsSpawned", False])) then {
		_buildings = [position _logic, _logic getVariable "sectorGrade"] call FNC_SW_randomEquipCrate;
		//_buildings pushBack (call compile loadFile (_logic getVariable ["sectorGrade", 0] call SATGv2_Sector_fnc_buildingClass));
		//_buildings pushBack ([position _logic, _logic getVariable "sectorGrade"] call FNC_SW_randomEquipCrate);
	
		_logic setVariable ["sectorBuildings", _buildings];
		
		_logic setVariable ["sectorGroup", _logic call SATG_SpawnSquad];
		_logic setVariable ["buildingsSpawned", True];
	};