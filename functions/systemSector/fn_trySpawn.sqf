	params ["_logic"];
	if (_logic getVariable ["cleaned", False]) exitWith {};
	
	if (not (_logic getVariable ["buildingsSpawned", False])) then {
		_buildings = [[position _logic, _logic getVariable "sectorGrade"] call SATGv2_RandomEquip_fnc_randomEquipCrate];
		_logic setVariable ["sectorBuildings", _buildings];
		_logic setVariable ["sectorGroup", _logic call SATGv2_fnc_SpawnSquad];
		_logic setVariable ["buildingsSpawned", True];
	};