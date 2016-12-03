	[
		[localize "str_SATGv2_questName", localize "str_SATGv2_questCampBravo1", 1], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questCampBravo2", 7], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questCampBravo3", 11], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questCampBravo4", 15]
	] remoteExec ["BIS_fnc_EXP_camp_playSubtitles"];
	
	_group = createGroup CIVILIAN;
	_group setBehaviour "CARELESS";
	_unit = _group createUnit ["C_man_1", [5946.65,11197.2,0.000213623], [], 0, "CAN_COLLIDE"];
	_unit setUnitLoadout [[],[],[],["U_I_C_Soldier_Para_2_F",[]],[],[],"H_Booniehat_oli","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	_unit setDammage 1;
	
	_vehicle = "C_Hatchback_01_sport_F" createVehicle [5948.02,11196.4,0.000213623];
	_vehicle setDir 0;
	
	["questCampBravoSearchIntel"] call BIS_fnc_missionTasks;
	["questCampBravoSearchIntel", "ASSIGNED", True] call BIS_FNC_taskSetState;
	
	waitUntil {sleep 1; count (_unit nearEntities ["Man", 4]) > 0};
	
	["questCampBravoSearchIntel", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	["questCampBravoSearchIntel2"] call BIS_fnc_missionTasks;
	["questCampBravoSearchIntel2", "ASSIGNED", True] call BIS_FNC_taskSetState;	
	
	waitUntil {sleep 0.5; not ("itemMAP" in assignedItems _unit)};
	["questCampBravoSearchIntel2", "SUCCEEDED", True] call BIS_FNC_taskSetState;	

	_group = createGroup WEST;
	[_group, [4029.93,11659.1,-9.15527e-005], 20, 50] call SATGv2_fnc_spawnUnits;
	
	["questCampBravoMovePointA"] call BIS_fnc_missionTasks;
	["questCampBravoMovePointA", "ASSIGNED", True] call BIS_FNC_taskSetState;	
	["questCampBravoMovePointB"] call BIS_fnc_missionTasks;
	["questCampBravoMovePointC"] call BIS_fnc_missionTasks;
	
	waitUntil {sleep 1; {side _x == EAST} count ([4029.93,11659.1,-9.15527e-005] nearEntities ["Man", 30]) > 0};
	
	["questCampBravoMovePointC", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	["questCampBravoMovePointA", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	["questCampBravoMovePointB", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	
	["questCampBravoCapture"] call BIS_fnc_missionTasks;
	["questCampBravoCapture", "ASSIGNED", True] call BIS_FNC_taskSetState;		
	
	waitUntil {sleep 1; {side _x == WEST} count ([4029.93,11659.1,-9.15527e-005] nearEntities ["Man", 150]) < 2};
	["questCampBravoCapture", "SUCCEEDED", True] call BIS_FNC_taskSetState;		
	
	resp call SATGv2_fnc_campCreate;
	
	call SATGv2_Quest_fnc_complete;