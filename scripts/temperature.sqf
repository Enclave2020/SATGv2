#define MsgProb 80

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

RandomExec = {
	params ["_prob", "_code"];
	if (ceil random 100 < _prob) exitWith {};
	call _code;
};

TEMP_Player_Handler = {
	_timeUpdate = 5;
	_timeCoeff = 60 / _timeUpdate;
	
	ppeTemp = ppEffectCreate ["ColorCorrections", 1500];
	ppeTemp ppEffectEnable True;
	
	while {true} do {
		_tempPlayer = player getVariable ["temperature", 36];
		// NOT IN CAR
		if (vehicle player != player) then {
			player setVariable ["temperature", 36 min (_tempPlayer + (4.2 / _timeCoeff))];
		} else {
			// 0.056
			_mulT = (((abs call TEMP_World) - 5) * 0.028 + 0.7) / _timeCoeff;
			_mulRun = speed player * (0.13 / _timeCoeff);			
			player setVariable ["temperature", 36 min (_tempPlayer - (_mulT - _mulRun))];
			
			_coef =  1 min (1 - (30 - _tempPlayer) * 0.033);
			
			// OLD SATURATION
			//_coef call TEMP_Saturation;
			
			// NEW
			player setAnimSpeedCoef _coef;
		};
		[1.5 - (36 - _tempPlayer) * 0.09] call TEMP_Saturation;
		
		
		if ((_tempPlayer < 34) and (_tempPlayer > 30)) then {[MsgProb, {systemChat selectRandom ["Мне немного прохладно.", "Прохладненько."]}] call RandomExec};
		if ((_tempPlayer < 30) and (_tempPlayer > 25)) then {[MsgProb, {systemChat selectRandom ["Меня морозит.", "Мои пальцы дубенеют.", "Я не чувствую нос.", "Надо бы согреться."]}] call RandomExec};
		if (_tempPlayer < 25) then {[MsgProb, {systemChat selectRandom ["Мне очень холодно.", "Мои ноги замерзли, мне сложно идти.", "Мне слишком холодно.. прилечь бы..."]}] call RandomExec};
		
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
	
	//hint Format ["Settings saturation to %1. %2", _saturation, time];
};

if (hasInterface) then {	
	[] spawn TEMP_Player_Handler;
};