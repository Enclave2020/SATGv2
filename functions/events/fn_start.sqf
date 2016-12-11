	// FROM LOW TO HIGH
	_events = [
		[{}, 0],
		[{[] spawn SATGv2_Events_fnc_flyBy}, 0.7]
	];
	
	_index = 0;
	_prob = random 1;
	{
		if (_x select 1 > _prob) exitWith {};
		_index = _forEachIndex;
	} forEach _events;
	
	call (_events select _index select 0);