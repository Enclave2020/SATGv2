	params ["_unit"];
	
	_helmets = [
		["H_HelmetB_light", 0.0],
		["H_HelmetB", 0.5],
		["H_HelmetSpecB", 0.7]
	] apply {[_x select 0, (_x select 1) * (0.9 / chaosLevel)]};
	
	_index = 0;
	_prob = random 1;
	{
		if (_x select 1 > _prob) exitWith {};
		_index = _forEachIndex;
	} forEach _helmets;
	
	removeHeadGear _unit;
	_unit addHeadGear (_helmets select _index select 0);