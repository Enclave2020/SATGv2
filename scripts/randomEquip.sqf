FNC_SW_weapons = {
	params ["_mul"];

	[["SMG_02_F", 0.00 * _mul], 
	["hgun_PDW2000_F", 0.05 * _mul], 	
	["SMG_01_F", 0.10 * _mul],
	["SMG_05_F", 0.15 * _mul],
	["arifle_AKM_F", 0.20 * _mul],
	["arifle_AKS_F", 0.25 * _mul],
	["arifle_Katiba_F", 0.30 * _mul], 
	["arifle_MX_Black_F", 0.40 * _mul], 
	["arifle_MXC_Black_F", 0.45 * _mul], 	
	["arifle_CTAR_blk_F", 0.47 * _mul],
	["arifle_TRG21_F", 0.50 * _mul], 
	["arifle_MXM_Black_F", 0.55 * _mul], 
	["arifle_CTARS_blk_F", 0.60 * _mul],
	["arifle_AK12_F", 0.62 * _mul],
	["LMG_Zafir_F", 0.75 * _mul], 
	["LMG_Mk200_F", 0.77 * _mul], 	
	["LMG_03_F", 0.79 * _mul],
	["arifle_SPAR_01_blk_F", 0.81 * _mul], 
	["arifle_SPAR_02_blk_F", 0.87 * _mul],
	["arifle_SPAR_03_blk_F", 0.89 * _mul],
	["srifle_DMR_06_camo_F", 0.91 * _mul],
	["srifle_DMR_01_F", 0.93 * _mul], 	
	["srifle_EBR_F", 0.95 * _mul], 	
	["srifle_LRR_F", 0.99 * _mul], 
	["srifle_GM6_F", 0.999 * _mul]]
};

FNC_SW_sights = {
	params ["_mul"];

	[["optic_ACO_grn", 0.10 * _mul],
	["optic_Holosight", 0.20 * _mul],
	["optic_MRCO", 0.30 * _mul],
	["optic_Arco", 0.60 * _mul],
	["optic_ERCO_blk_F", 0.78 * _mul],
	["optic_DMS", 0.92 * _mul],
	["optic_KHS_blk", 0.95 * _mul],
	["optic_LRPS", 0.99 * _mul],
	["optic_tws_mg", 0.995 * _mul]]
};

FNC_SW_selectRandom = {
	params ["_prob", "_pool", "_weapon"];
	{
		if ([1, _x select 1] call FNC_SW_ProbWeap < _prob) then {_weapon = _x select 0};
	} forEach _pool;
	
	_weapon
};

FNC_SW_randomEquip = {
	params ["_grade"];
	
	_result = [[], [], []];
	// ОРУЖИЕ; ОПТИКА; ПАТРОНЫ
	_itemsCount = [floor random 3 + 1, floor random 2 + 1, floor random 4 + 2];
	_gradeMul = 1 / (_grade / 2);
	_chaosMul = _gradeMul / chaosLevel;
	for "_a" from 0 to count _itemsCount - 1 do {
		for "_b" from 0 to (_itemsCount select _a) do {
			_random = call FNC_SW_Random;
			switch (_a) do {
				case 0 : {
					_weapon = [_random, _chaosMul call FNC_SW_weapons] call FNC_SW_selectRandom;
					_result param [0] pushBack _weapon;
				};
				case 1 : {
					_sight = [_random, _chaosMul call FNC_SW_sights] call FNC_SW_selectRandom;
					_result param [1] pushBack _sight;	
				};
				case 2 : {
					_weapon = [_random, _chaosMul call FNC_SW_weapons] call FNC_SW_selectRandom;
					_ammo = _weapon call FNC_SW_AmmoType;
					_result param [2] pushBack _ammo;
				};
			};
		}
	};

	_result
};

FNC_SW_randomEquipCrate = {
	params ["_position", "_grade"];
	
	_items = _grade call FNC_SW_randomEquip;
	
	_crate = "B_CargoNet_01_ammo_F" createVehicle _position;
	
	clearItemCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	
	{_crate addWeaponCargoGlobal [_x, 1]} forEach (_items select 0);
	{_crate addItemCargoGlobal [_x, 1]} forEach (_items select 1);
	{_crate addItemCargoGlobal [_x, 1]} forEach (_items select 2);

	_crate
};

FNC_SW_RemoveMagazines = {
	params ["_unit"];
	{_unit removeMagazine _x} forEach magazines _unit;
};

FNC_SW_AmmoType = {
	params ["_weapon"];
	getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines") select 0
};

FNC_SW_Random = {
	floor random 1001
};

FNC_SW_ProbUnit = {
	params ["_unit"];
	skill _unit + 0.2
};

FNC_SW_ProbWeap = {
	params ["_probUnit", "_probWeap"];
	(1 - (_probUnit * (1 - _probWeap))) * 1000
};

FNC_SW_RandomWeapon = {
	params ["_unit"];
	
	_weapons = (1 / chaosLevel) call FNC_SW_weapons;
	_weapon = _weapons select 0 select 0;
	
	_prob = call FNC_SW_Random;
	_probUnit = _unit call FNC_SW_ProbUnit;
	{
		if ([_probUnit, _x select 1] call FNC_SW_ProbWeap < _prob) then {_weapon = _x select 0};
	} forEach _weapons;
	
	removeAllWeapons _unit;
	_unit call FNC_SW_RemoveMagazines;
	
	_magazine = _weapon call FNC_SW_AmmoType;
	for "_i" from 1 to 5 do {_unit addItemToVest _magazine};
	_unit addWeapon _weapon;
	
	if (random 1 > (chaosLevel * 0.7)) then {_unit addWeapon "rhs_weap_M136"};
};

FNC_SW_RandomSight = {
	params ["_unit"];
	_sight = "none";
	
	_prob = call FNC_SW_Random;
	_probUnit = _unit call FNC_SW_ProbUnit;
	
	{
		if ([_probUnit, _x select 1] call FNC_SW_ProbWeap < _prob) then {_sight = _x select 0};
	} forEach ((1 / chaosLevel) call FNC_SW_sights);
	
	if (_sight != "none") then {_unit addPrimaryWeaponItem _sight};
};

FNC_SW_RandomizeSide = {
	params ["_side"];
	{
		if (_x == leader _x) then {_x setSkill 1};
		_x call FNC_SW_RandomWeapon;
		_x call FNC_SW_RandomSight;
		_x setVariable ["Randomized", True];
	} forEach (allUnits select {side _x == _side and (not (_x getVariable ["Randomized", False]))});
};