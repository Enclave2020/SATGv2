	params ["_unit"];
	
	_items = [
		["ItemMap", 0.00],
		["ItemCompass", 0.10],
		["ItemWatch", 0.15],
		["ItemRadio", 0.20],
		["Binocular", 0.60],
		["NVGoggles_OPFOR", 0.65],
		["ItemGPS", 0.70],
		["Rangefinder", 0.80],
		["Laserdesignator_02", 0.90]
	] apply {[_x select 0, (_x select 1) * (0.7 / chaosLevel)]};
	
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	
	for "_i" from 0 to floor random 10 do {
		_index = 0;
		_prob = random 1;
		{
			if (_x select 1 > _prob) exitWith {};
			_index = _forEachIndex;
		} forEach _items;
		_item = _items select _index select 0;
		if (not (_item in (items _unit + assignedItems _unit))) then {
			_unit addItem _item;
			_unit assignItem _item;
			};
	};