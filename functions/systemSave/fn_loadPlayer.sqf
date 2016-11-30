	params ["_name"];	

	_data = profileNamespace getVariable _name + "_Player";
	
	player setPosATL (_data select 0);
	player setDammage (_data select 1);
	player setDir (_data select 2);
	player setUnitLoadout (_data select 3);

	(_data param [4, "100"]) spawn {
		sleep 5;
		[call TFAR_fnc_activeSwRadio, 1, _this] call TFAR_fnc_SetChannelFrequency;
	};
	
	player setVariable ["temperature", (_data select 5)];
	
	if (isMultiplayer) then {
		if (_data select 6) then {[player, objNull] spawn FAR_Player_Unconscious};
	};
	
	if (uniform player == "") then {player forceAddUniform "U_BG_Guerrilla_6_1"};