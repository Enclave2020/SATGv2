	params ["_object"];
	waitUntil{
		sleep 0.1; 
		_vel = velocity _object;
		_speed = ((_vel select 0) + (_vel select 1) + (_vel select 2));
		_speed == 0
	};
	
	[missionNamespace, position _object] call BIS_fnc_addRespawnPosition;
	"_cwa_lamp" createVehicle position _object;
	_respawnPoints = missionNamespace getVariable ["SATGv2Respawns", []];
	_respawnPoints pushBack position _object;
	
	missionNamespace setVariable ["SATGv2Respawns", _respawnPoints, True];
	["SpawnCreated"] remoteExec ["bis_fnc_showNotification"];