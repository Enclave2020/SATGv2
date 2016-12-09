	params ["_perkIdx"];
	_tree = call SATGv2_Perks_fnc_tree;
	_perk = _tree select _perkIdx;
	(localize Format ["STR_Perks_%1_desc", _perk select 0])