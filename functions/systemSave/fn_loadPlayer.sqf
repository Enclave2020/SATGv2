	params ["_name"];	

	_data = profileNamespace getVariable _name + "_Player";
	
	player setPosATL (_data select 0);
	player setDammage (_data select 1);
	player setDir (_data select 2);
	player setUnitLoadout (_data select 3);
	
	player setVariable ["temperature", (_data select 5)];
	
	if (isMultiplayer) then {
		if (_data select 6) then {[player, objNull, profileNameSpace getVariable ["SATGv2_FARBleed", 300]] spawn FAR_Player_Unconscious};
	};
	
	player setVariable ["toolkitCount", (_data select 7)];
	
	if (call SATGv2_fnc_tfarInstalled) then {
		_radioData = _data param [8, []];
		_radioData spawn {
			if (_this isEqualTo []) exitWith {};
			sleep 5;
			if (not call TFAR_fnc_haveSWRadio) exitWith {};
			[call TFAR_fnc_activeSwRadio, _this] call TFAR_fnc_setSwSettings;
		};
	};
	
	if (uniform player == "") then {player forceAddUniform "U_BG_Guerrilla_6_1"};