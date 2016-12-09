	params ["_actionIdx", "_control"];
	disableSerialization; 
	_dialog = uiNameSpace getVariable "dialogPerks";
	_descriptionText = _dialog displayCtrl 1100;
	
	switch (_actionIdx) do {
		case 0 : {
			{
				ctrlEnable [1600 + _forEachIndex, [_x] call SATGv2_Perks_fnc_canEnable];
			} forEach call SATGv2_Perks_fnc_tree;
		};
		case 1 : {
			_control = _control param [0, controlNull];
			_description = (ctrlIDC _control - 1600) call SATGv2_Perks_fnc_description;
			_descriptionText ctrlSetStructuredText parseText _description;
		};
		case 2 : {
			_control = _control param [0, controlNull];
			(ctrlIDC _control - 1600) call SATGv2_Perks_fnc_enable;
		};		
	};