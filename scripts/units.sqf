FNC_bodyManagerInit = {
	params ["_unit"];
	_unit addEventHandler ["Killed", {(_this param [0]) setVariable ["DeathTime", Time]}];
};

FNC_bodyManagerClear = {
	{
		if (Time - (_x getVariable ["DeathTime", 0]) > 1800) exitWith {deleteVehicle _x};
	} forEach (allDeadMen select {(_x getVariable ["DeathTime", 0]) > 0});
};

SATG_spawnSquad = {
	params ["_logic"];
	
	_group = createGroup WEST;
	_group setVariable ["OwnerLogic", _logic];
	
	_grade = _logic getVariable ["sectorGrade", 0];
	_points = (_grade + 1) ^ 3 * chaosLevel;
	
	// COPTERS
	while {_points > 150} do {
		_position = [position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
		
		
		[[_position select 0, _position select 1, 100], 0, "RHS_AH64D_wd", _group] call bis_fnc_spawnvehicle;
		_points = _points - 150;
	};
	
	// TANKS
	while {_points > 50} do {
		[[position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos, 0, "rhsusf_m1a1aimwd_usarmy", _group] call bis_fnc_spawnvehicle;
		_points = _points - 50;
	};	
	
	// APC
	while {_points > 25} do {
		[[position _logic, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos, 0, "RHS_M2A2_wd", _group] call bis_fnc_spawnvehicle;
		_points = _points - 25;
	};	
	
	// MAN
	while {_points > 0} do {
		"rhsusf_army_ocp_rifleman" createUnit [position _logic, _group];
		_points = _points - 1;
	};	
	
	WEST call FNC_SW_RandomizeSide;
	call FNC_Score_Init;
	
	[_group, position _logic, 100] call CBA_fnc_taskDefend;
	
	{
		_x addEventHandler ["Killed", {call SATG_unitKilled}];
		_x call FNC_bodyManagerInit;
	} forEach units _group;
	
	_group
};

SATG_unitKilled = {
	params ["_unit"];
	if ({alive _x} count units group _unit < 2) then {
		_logic = group _unit getVariable ["OwnerLogic", objNull];
		_logic call SCTR_setClear;
	};
};