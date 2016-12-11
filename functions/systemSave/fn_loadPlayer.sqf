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
			
			sleep 3;
			if (not call TFAR_fnc_haveSWRadio) exitWith {};
			
			player unlinkItem (call TFAR_fnc_activeSwRadio);
			player linkItem "itemRadio";
			TF_last_request_time = 0;
			[] spawn TFAR_fnc_requestRadios;
			
			sleep 3;
			[call TFAR_fnc_activeSwRadio, _this] call TFAR_fnc_setSwSettings;
		};
	};
	
	
	
	player setVariable ["ammoCount", (_data select 9)];