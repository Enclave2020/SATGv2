	player addEventHandler ["Hit", {
		_traitor = param [3];
		if (side _traitor == side player) then {
			_traitor remoteExec ["SATGv2_fnc_friendlyFireEx", 2];
		};
	}];