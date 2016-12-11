	params ["_vehicle", "_data"];
	for "_i" from 0 to (count _data) - 1 do {_vehicle setHitIndex [_i, (_data select _i)]};