	params ["_grade"];
	
	_result = [[], [], []];
	// Œ–”∆»≈; Œœ“» ¿; œ¿“–ŒÕ€
	_itemsCount = [floor random 3 + 1, floor random 2 + 1, floor random 4 + 2];
	_gradeMul = 1 / (_grade / 2);
	_chaosMul = _gradeMul / chaosLevel;
	for "_a" from 0 to count _itemsCount - 1 do {
		for "_b" from 0 to (_itemsCount select _a) do {
			_random = call SATGv2_RandomEquip_fnc_random;
			switch (_a) do {
				case 0 : {
					_weapon = [_random, _chaosMul call SATGv2_RandomEquip_fnc_weapons] call SATGv2_RandomEquip_fnc_selectRandom;
					_result param [0] pushBack _weapon;
				};
				case 1 : {
					_sight = [_random, _chaosMul call SATGv2_RandomEquip_fnc_sights] call SATGv2_RandomEquip_fnc_selectRandom;
					_result param [1] pushBack _sight;	
				};
				case 2 : {
					_weapon = [_random, _chaosMul call SATGv2_RandomEquip_fnc_weapons] call SATGv2_RandomEquip_fnc_selectRandom;
					_ammo = _weapon call SATGv2_RandomEquip_fnc_ammoType;
					_result param [2] pushBack _ammo;
				};
			};
		}
	};

	_result