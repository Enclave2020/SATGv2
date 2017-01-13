	if (chaosLevel < 1) exitWith {};
	_positions = allPlayers select {vehicle _x == _x};
	if (count _positions == 0) exitWith {};
	_player = selectRandom _positions;
	_position = (position _player) getPos [400, random 360];

	_viperGroup = configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "SpecOps" >> "O_T_ViperTeam";
	_group = [_position, WEST, _viperGroup] call BIS_fnc_spawnGroup;
	
	_wayPoint = _group addWaypoint [position _player, 0, 0];
	//_wayPoint setWaypointBehaviour "COMBAT";
	_wayPoint setWaypointType "DESTROY";
	_wayPoint waypointAttachObject _player;