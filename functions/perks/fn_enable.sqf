	params ["_perkIdx"];
	_tree = call SATGv2_Perks_fnc_tree;
	_perk = _tree select _perkIdx;
	
	if (not ([_perk] call SATGv2_Perks_fnc_canEnable)) exitWith {};
	(profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) params ["_level", "_xp", "_points"];
	if (_points == 0) exitWith {titleText [localize "str_Perks_needPoints", "PLAIN DOWN"]};
	
	_enabled = profileNameSpace getVariable ["SATGv2Perks", [""]];
	profileNameSpace setVariable ["SATGv2Perks", _enabled + [_perk select 0]];
	profileNameSpace setVariable ["SATGv2Level", [_level, _xp, _points - 1]];
	
	switch (_perk select 0) do {
		case "wallhack_crate" : {call SATGv2_Perks_fnc_wallhackCrate};
		case "wallhack_man" : {call SATGv2_Perks_fnc_wallhackMan};
		case "wallhack_veh" : {call SATGv2_Perks_fnc_wallhackVeh};
		case "disable_stamina" : {player enableStamina False};
	};
	
	0 call SATGv2_Perks_fnc_show;