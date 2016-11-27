TEMP_World = {
	_timeWarm = 0 max (8 - abs(14 - (date param[3])));
	_snowWarm = 12 - thirsk_snowDens;
	_overcastWarm = (1 - overCast) / 0.12;
	(_overcastWarm + _snowWarm + _timeWarm - 30)
};

TEMP_dropWeapon = {
	_holder = "GroundWeaponHolder" createVehicle position player;
	player action ["DropWeapon", _holder, currentWeapon player];
};

TEMP_makeCamp = {
	_lastCamp = profileNamespace getVariable ["SATGv2LastCamp", 0];
	// 30 MINS = 0.00005
	if (dateToNumber date - _lastCamp > (0.00005 * 4)) exitWith {
		player playAction "PutDown";
		"Campfire_burning_F" createVehicle position player;
		profileNamespace setVariable ["SATGv2LastCamp", dateToNumber date];
		hint "Щас будет огонь!";
		sleep 2;
		hint "";
	};
	
	hint "Дровогенератор не готов!";
	sleep 2;
	hint "";
};

TEMP_Player_Handler = {
	_timeUpdate = 5;
	_timeCoeff = 60 / _timeUpdate;
	
	ppeTemp = ppEffectCreate ["ColorCorrections", 1500];
	ppeTemp ppEffectEnable True;
	
	while {true} do {
		_tempPlayer = player getVariable ["temperature", 36];
		
		_inVehicle = vehicle player != player;
		_nearCampFire = count nearestObjects [position player, ["Campfire_burning_F"], 4] > 0;
		_inBuilding = getPosATL player select 2 > 0.4;
		
		if (_inVehicle or _nearCampFire or _inBuilding) then {
			player setVariable ["temperature", 36 min (_tempPlayer + (4.2 / _timeCoeff))];
		} else {
			// 0.056
			_mulT = (((abs call TEMP_World) - 5) * 0.028 + 0.7) / _timeCoeff;
			_mulRun = speed player * (0.13 / _timeCoeff);			
			player setVariable ["temperature", 36 min (_tempPlayer - (_mulT - _mulRun))];
			
			_coef =  1 min (1 - (30 - _tempPlayer) * 0.033);
			
			player setAnimSpeedCoef _coef;
		};
		[1.5 - (36 - _tempPlayer) * 0.09] call TEMP_Saturation;
		
		if (isMultiplayer) then {if (_tempPlayer < 20) then {player setDammage 1}};
		
		sleep _timeUpdate;
	};
};

TEMP_Saturation = {
	params ["_saturation"];
	
	ppeTemp ppEffectAdjust [ 
		 1,  
		 1,  
		 0,  
		 0, 0, 0, 0,  
		 1, 1, 1, _saturation,  
		 0.299, 0.587, 0.114, 0 
	]; 
	
	ppeTemp ppEffectCommit 0; 
};

if (hasInterface) then {
	[46, [false, true, false], {[] spawn TEMP_makeCamp}] call CBA_fnc_addKeyHandler;
	[] spawn TEMP_Player_Handler;
};