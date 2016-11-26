//THIRSK_snowstormSoundThing = False;

WEATHER_fogAndSnow = {
	_snow = 0 max ((overcast - 0.4) * 20);
	_fogSnow = _snow / 12;
	_fogTime = abs (14 - (date param [3])) / 13;
	
	15 setFog (_fogTime max _fogSnow);
	missionNameSpace setVariable ["thirsk_snowDens", _snow, True];
};

WEATHER_Changer = {
	while {true} do {
		0 setOvercast random 1;
		sleep (nextWeatherChange + 300);
	};
};

WEATHER_Load = {
	_weather = profileNamespace getVariable ["SATGv2_World", objNull];
	setDate (_weather select 0);
	0 setOvercast (_weather select 1);
};

WEATHER_Handler = {
	sleep 1;
	
	if (objNull isEqualTo (profileNamespace getVariable ["SATGv2_World", objNull])) then {
		0 setFog [1, [1, 1]];
		0 setOvercast 1;
	} else {
		call WEATHER_Load;
	};
	forceWeatherChange;
	
	[] spawn WEATHER_Changer;
	
	while {true} do {
		call WEATHER_fogAndSnow;
		sleep 60;
	};
};

if (isServer) then {
	setTimeMultiplier 4;
	[] spawn WEATHER_Handler;
};