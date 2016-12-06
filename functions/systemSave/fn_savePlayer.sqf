	params ["_name"];
	
	if (!alive player) exitWith {};
	
	_radioData = [];
	if ((call SATGv2_fnc_tfarInstalled) and (call TFAR_fnc_haveSWRadio)) then {
		_radioData = (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
	};
	
	_data = [getPosATL player, damage player, direction player, getUnitLoadout player, 0, player getVariable ["temperature", 36], player getVariable ["far_isunconscious", 0] == 1, player getVariable ["toolkitCount", 0], _radioData];
	profileNamespace setVariable [_name + "_Player", _data];