if (isServer) then {
	setTimeMultiplier 4;
	0 setFog [0.1, 0];
		[] spawn {
			if (objNull isEqualTo (profileNamespace getVariable ["SATGv2_World", objNull])) then {
				0 setOvercast 0.8;
			} else {
				call SATGv2_Weather_fnc_load;
			};
			forceWeatherChange;
			
			[] spawn SATGv2_Weather_fnc_Changer;
			
			while {true} do {
				call SATGv2_Weather_fnc_fogAndSnow;
				sleep 60;
			};
	};
};