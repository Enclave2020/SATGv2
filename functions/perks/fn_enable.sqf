	params ["_perkIdx"];
	_tree = call SATGv2_Perks_fnc_tree;
	_perk = _tree select _perkIdx;
	
	if (not ([_perk] call SATGv2_Perks_fnc_canEnable)) exitWith {};
	_enabled = profileNameSpace getVariable ["SATGv2Perks", [""]];
	profileNameSpace setVariable ["SATGv2Perks", _enabled + [_perk select 0]];
	0 call SATGv2_Perks_fnc_show;