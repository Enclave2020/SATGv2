	[
		[localize "str_SATGv2_questName", localize "str_SATGv2_questTowerDemolition1", 1], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questTowerDemolition2", 7], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questTowerDemolition3", 11]
	] remoteExec ["BIS_fnc_EXP_camp_playSubtitles"];
	
	_missionCenter = [6564.14,3404.02,0.00124359];
	_tower = nearestObjects [_missionCenter, ["NonStrategic"], 16] select 0;
	
	["questTowerDemolition"] call BIS_fnc_missionTasks;
	["questTowerDemolition", "ASSIGNED", True] call BIS_FNC_taskSetState;
	
	[createGroup WEST, _missionCenter, 20, 40] call SATGv2_fnc_spawnUnits;
	waitUntil {sleep 1; damage _tower > 0.3};
	_tower setDammage 1;

	["questTowerDemolition", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	call SATGv2_Quest_fnc_complete;