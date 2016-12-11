	[
		[localize "str_SATGv2_questName", localize "str_SATGv2_questOldFriend1", 1], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questOldFriend2", 7], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questOldFriend3", 11], 
		[localize "str_SATGv2_questName", localize "str_SATGv2_questOldFriend4", 15]
	] remoteExec ["BIS_fnc_EXP_camp_playSubtitles"];
	
	["questOldFriendMove"] call BIS_fnc_missionTasks;
	["questOldFriendMove", "ASSIGNED", True] call BIS_FNC_taskSetState;
	
	_missionCenter = [3120.17,9235.14,0.00143433];
	_building = _missionCenter nearObjects ["House", 50] select {typeOf _x == "Land_Farm_Cowshed_a"} select 0;
	
	_group = createGroup independent;
	_unit = _group createUnit ["C_man_1", _building buildingPos 5, [], 0, "CAN_COLLIDE"];
	_unit setCaptive True;
	_unit setUnitLoadout [[],[],[],["U_I_C_Soldier_Para_2_F",[]],[],[],"H_Booniehat_oli","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	[_unit, "Acts_ExecutionVictim_Loop"] remoteExec ["switchMove"];
	[_unit, ["Развязать", {
		params ["_unit"];
		[_unit, "Acts_ExecutionVictim_Unbow"] remoteExec ["switchMove"];
		[_unit] join group player;
		_unit remoteExec ["removeAllActions"];
		_unit setCaptive False;
	}]] remoteExec ["addAction"];
	
	_group = createGroup WEST;
	[_group, _missionCenter, 10, 40] call SATGv2_fnc_spawnUnits;
	
	waitUntil {{side _x == independent} count (_unit nearEntities ["Man", 5]) > 0};
	["questOldFriendMove", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	["questOldFriendRescue"] call BIS_fnc_missionTasks;
	["questOldFriendRescue", "ASSIGNED", True] call BIS_FNC_taskSetState;
	
	waitUntil {(not alive _unit) or (_unit distance trader < 50)};
	
	if (not alive _unit) exitWith {
		["questOldFriendRescue", "FAILED", True] call BIS_FNC_taskSetState;
	};
	
	["questOldFriendRescue", "SUCCEEDED", True] call BIS_FNC_taskSetState;
	deleteVehicle _unit;
	
	call SATGv2_Quest_fnc_complete;