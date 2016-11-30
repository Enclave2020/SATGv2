	params ["_name", ["_remove", False]];
	if (hasInterface) then {_name call SATGv2_Save_fnc_loadPlayer};	
	if (isServer) then {
		[_name, _remove] call SATGv2_Save_fnc_loadVehicles;
		_worldSave = profileNamespace getVariable ["SATGv2_World", [0, 0, [], 0.2, []]];
		missionNamespace setVariable ["chaosLevel", _worldSave param [3], True];
		
		_respawnPoints = _worldSave param [4];
		missionNamespace setVariable ["SATGv2Respawns", _respawnPoints, True];
		{
			[missionNamespace, _x] call BIS_fnc_addRespawnPosition;
			"_cwa_lamp" createVehicle _x;
		} forEach _respawnPoints;
	};