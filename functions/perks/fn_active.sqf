	params ["_perkName"];
	_enabled = call SATGv2_Perks_fnc_enabled;
	_enabled find _perkName >= 0