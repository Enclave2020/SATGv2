	params ["_name"];
	
	if (!alive player) exitWith {};
	
	_data = [getPosATL player, damage player, direction player, getUnitLoadout player, (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwFrequency, player getVariable ["temperature", 36], player getVariable ["far_isunconscious", 0] == 1, player getVariable ["toolkitCount", 0]];
	profileNamespace setVariable [_name + "_Player", _data];