	params ["_perkIdx"];
	_tree = call SATGv2_Perks_fnc_tree;
	_perk = _tree select _perkIdx;
	
	if (not ([_perk] call SATGv2_Perks_fnc_canEnable)) exitWith {};
	(profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) params ["_level", "_xp", "_points"];
	if (_points == 0) exitWith {titleText [localize "str_Perks_needPoints", "PLAIN DOWN"]};
	
	_enabled = profileNameSpace getVariable ["SATGv2Perks", [""]];
	profileNameSpace setVariable ["SATGv2Perks", _enabled + [_perk select 0]];
	profileNameSpace setVariable ["SATGv2Level", [_level, _xp, _points - 1]];
	
	0 call SATGv2_Perks_fnc_show;