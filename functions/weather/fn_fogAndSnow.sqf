	_snow = 0 max ((overcast - 0.4) * 20);
	_fogSnow = _snow / 12;
	_fogTime = abs (14 - (date param [3])) / 13;
	_radioCoeff = (_snow / 12) * 7 + 7;
	
	15 setFog (_fogTime max _fogSnow);
	missionNameSpace setVariable ["thirsk_snowDens", _snow, True];
	missionNameSpace setVariable ["TF_terrain_interception_coefficient", _radioCoeff, True];