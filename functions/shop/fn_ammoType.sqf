	params ["_weapon"];
	getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines") select 0