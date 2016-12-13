	params ["_vehicle", "_killer"];
	
	_bonus = switch (typeOf _vehicle) do {
		case "B_Heli_Attack_01_F" : {1500};
		case "B_MBT_01_cannon_F" : {1000};
		case "B_APC_Wheeled_01_cannon_F" : {500};
		default {0};		
	};
	
	_bonus remoteExec ["SATGv2_fnc_addMoney", owner _killer];
	["xpAdd", _bonus / 10] remoteExec ["CBA_fnc_localEvent", owner _killer];
	
	