	_avaible = call SATGv2_Quest_fnc_avaible;
	if (count _avaible == 0) exitWith {};
	(selectRandom _avaible) call SATGv2_Quest_fnc_begin;