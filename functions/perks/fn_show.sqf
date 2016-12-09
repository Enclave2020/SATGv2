	params ["_actionIdx", "_control"];
	
	switch (_actionIdx) do {
		case 0 : {
			{
				ctrlEnable [1600 + _forEachIndex, (_x select 0) call SATGv2_Perks_fnc_active];
			} forEach call SATGv2_Perks_fnc_tree;
		};
	};