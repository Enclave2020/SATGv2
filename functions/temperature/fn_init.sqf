	if (hasInterface) then {
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
				_mulT = (((abs call SATGv2_Temperature_fnc_world) - 5) * 0.028 + 0.7) / _timeCoeff;
				_mulRun = speed player * (0.13 / _timeCoeff);			
				player setVariable ["temperature", 36 min (_tempPlayer - (_mulT - _mulRun))];
				
				_coef =  1 min (1 - (30 - _tempPlayer) * 0.033);
				
				player setAnimSpeedCoef _coef;
			};
			[1.5 - (36 - _tempPlayer) * 0.09] call SATGv2_Temperature_fnc_Saturation;
			
			if (isMultiplayer) then {if (_tempPlayer < 20) then {player setDammage 1}};
			
			sleep _timeUpdate;
		};
	};