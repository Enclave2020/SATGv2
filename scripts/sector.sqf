// CONST
#define SCTR_LoadRadius 700

#define SCTR_Grade_Hill 1
#define SCTR_Grade_FlatArea 2
#define SCTR_Grade_City 3
#define SCTR_Grade_Capital 4
#define SCTR_Grade_Airbase 5

SCTR_toRelative = {
	params ["_object"];
	
	_result = [];
	{
		_result pushBack [typeOf _x, _object distance _x, [_object, _x] call BIS_fnc_relativeDirTo, direction _x];
	} forEach (allMissionObjects "building" select {_x distance _object < 500});
	
	_result
};

SCTR_buildingClass = {
	params ["_grade"];
	
	switch (_grade) do {
		case SCTR_Grade_Hill : {"sectorHill.sqf"};
		//case SCTR_Grade_FlatArea : {"sectorOutpost.sqf"};
		default {};
	};
};

SCTR_gradeMul = {
	params ["_grade"];
	
	switch (_grade) do {
		case SCTR_Grade_Airbase : {3};
		default {1};
	};
};

SCTR_trySpawn = {
	params ["_logic"];
	
	if (_logic getVariable ["cleaned", False]) exitWith {};
	
	if (not (_logic getVariable ["buildingsSpawned", False])) then {
		_buildings = call compile loadFile (_logic getVariable ["sectorGrade", 0] call SCTR_buildingClass);
		_buildings pushBack ([position _logic, _logic getVariable "sectorGrade"] call FNC_SW_randomEquipCrate);
	
		_logic setVariable ["sectorBuildings", _buildings];
		
		_logic setVariable ["sectorGroup", _logic call SATG_SpawnSquad];
		_logic setVariable ["buildingsSpawned", True];
	};
};

SCTR_gradeCost = {
	params ["_logic"];
	_grade = _logic getVariable "sectorGrade";
	_cost = 0;
	switch (_grade) do {
		case 1: {_cost = 500};
		case 2: {_cost = 1000};
		case 3: {_cost = 2000};
		case 4: {_cost = 5000};
		case 5: {_cost = 20000};
	};
	
	_cost
};

SCTR_chaosCost = {
	params ["_logic"];
	
	_grade = _logic getVariable "sectorGrade";
	_cost = 0;	
	switch (_grade) do {
		case 1: {_cost = 0.005};
		case 2: {_cost = 0.01};
		case 3: {_cost = 0.02};
		case 4: {_cost = 0.1};
		case 5: {_cost = 0.3};
	};	
	
	_cost
};

SCTR_setClear = {
	params ["_logic"];
	
	if (_logic getVariable ["cleaned", False]) exitWith {};
	
	missionNamespace setVariable ["chaosLevel", chaosLevel + (_logic call SCTR_chaosCost), True];
	_money = _logic call SCTR_gradeCost;
	[_money] remoteExec ["FNC_addMoney"];
	
	(_logic getVariable "Marker") setMarkerColor "colorOpfor";
	
	["SectorCaptured",[str _money]] remoteExec ["bis_fnc_showNotification"];
	
	_logic setVariable ["cleaned", True];
};

SCTR_tryDeSpawn = {
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
	
	call FNC_bodyManagerClear;
};

SCTR_triggerOwner = {
	params ["_trigger"];
	_trigger getVariable ["owner", objNull]
};

SCTR_triggerSetOwner = {
	params ["_trigger", "_owner"];
	_trigger setVariable ["owner", _owner];
};

SCTR_createMarker = {
	params ["_position", "_captured"];
	
	_marker = createMarker [str _position, _position];
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerSize [400, 400];
	_marker setMarkerBrush "SolidBorder";
	if (_captured) then {_marker setMarkerColor "colorOPFOR"} else {_marker setMarkerColor "colorBLUFOR"};
	
	_marker
};

SCTR_createLogic = {
	params ["_location", "_grade"];
	
	_position = locationPosition _location;	
	
	_clearedSectors = (profileNamespace getVariable [GW_SaveName + "_World", [0, 0, []]]) param [2];
	if (_clearedSectors find (str _location) >= 0) exitWith {
		_logic = groupLogic createUnit ["Logic", _position, [], 0, "NONE"];
		_logic setVariable ["cleaned", True];
		_logic setVariable ["Name", str _location];
		[_position, True] call SCTR_createMarker;
	};
	
	_logic = groupLogic createUnit ["Logic", _position, [], 0, "NONE"];
	_logic setVariable ["Name", str _location];
	_logic setVariable ["sectorGrade", _grade];
	
	_trigger = createTrigger ["EmptyDetector", _position];
	[_trigger, _logic] call SCTR_triggerSetOwner;
	
	// SPAWN AND DESPAWN
	_trigger setTriggerArea [SCTR_LoadRadius / 2, SCTR_LoadRadius / 2, 0, True];
	_trigger setTriggerActivation ["EAST", "PRESENT", True];
	_trigger setTriggerStatements ["this", "thisTrigger call SCTR_triggerOwner call SCTR_trySpawn", "thisTrigger call SCTR_triggerOwner call SCTR_tryDeSpawn"];	

	_logic setVariable ["Marker", [position _logic, False] call SCTR_createMarker];
};

SCTR_Init = {
	// ["Mount","Name","Strategic","StrongpointArea","FlatArea","FlatAreaCity","FlatAreaCitySmall","CityCenter","Airport","NameMarine","NameCityCapital","NameCity","NameVillage","NameLocal","Hill","ViewPoint","RockArea","BorderCrossing","VegetationBroadleaf","VegetationFir","VegetationPalm","VegetationVineyard","fakeTown","Area"]
	groupLogic = createGroup sideLogic;

	{[_x, SCTR_Grade_Hill] call SCTR_createLogic} forEach nearestLocations [[0, 0, 0], ["Hill"], 50000];	
	{[_x, SCTR_Grade_FlatArea] call SCTR_createLogic} forEach nearestLocations [[0, 0, 0], ["FlatAreaCity"], 50000];
	{[_x, SCTR_Grade_City] call SCTR_createLogic} forEach nearestLocations [[0, 0, 0], ["CityCenter"], 50000];	
	{[_x, SCTR_Grade_Capital] call SCTR_createLogic} forEach nearestLocations [[0, 0, 0], ["NameCityCapital"], 50000];		
	{[_x, SCTR_Grade_Airbase] call SCTR_createLogic} forEach nearestLocations [[0, 0, 0], ["Airport"], 50000];
};

if (isServer) then {
	call SCTR_Init;
};