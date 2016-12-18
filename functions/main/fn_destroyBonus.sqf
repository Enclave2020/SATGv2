	params ["_vehicle", "_killer"];
	
	_bonus = switch (typeOf _vehicle) do {
		case "B_Heli_Attack_01_F" : {3000};
		case "B_MBT_01_cannon_F" : {2000};
		case "B_APC_Wheeled_01_cannon_F" : {1000};
		default {0};		
	};
	
	_bonus remoteExec ["SATGv2_fnc_addMoney", owner _killer];
	["xpAdd", _bonus / 20] remoteExec ["CBA_fnc_localEvent", owner _killer];
	
	