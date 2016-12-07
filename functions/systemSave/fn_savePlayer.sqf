	params ["_name"];
	
	if (!alive player) exitWith {};
	
	_radioData = [];
	if (call SATGv2_fnc_tfarInstalled) then {
		if (call TFAR_fnc_haveSWRadio) then {
			_radioData = (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
		};
	};
	
	_data = [getPosATL player, damage player, direction player, getUnitLoadout player, 0, player getVariable ["temperature", 36], player getVariable ["far_isunconscious", 0] == 1, player getVariable ["toolkitCount", 0], _radioData, player getVariable ["ammoCount", 0]];
	profileNamespace setVariable [_name + "_Player", _data];