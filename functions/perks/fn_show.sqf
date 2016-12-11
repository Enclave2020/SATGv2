	params ["_actionIdx", "_control"];
	
	_points = (profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) param [2];
	
	disableSerialization; 
	_dialog = uiNameSpace getVariable "dialogPerks";
	_descriptionText = _dialog displayCtrl 1100;
	
	switch (_actionIdx) do {
		case 0 : {
			{
				_color = [1, 1, 1, 1];
				
				if (not ((_x select 1) call SATGv2_Perks_fnc_active)) then {_color = [0.5, 0.5, 0, 1]};
				if ((_x select 0) call SATGv2_Perks_fnc_active) then {_color = [0, 0.5, 0, 1]};
				
				ctrlSetText [1600 + _forEachIndex, localize ("STR_Perks_" + (_x select 0))];
				(_dialog displayCtrl (1600 + _forEachIndex)) ctrlSetTextColor _color;
				//ctrlEnable [1600 + _forEachIndex, [_x] call SATGv2_Perks_fnc_canEnable];
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