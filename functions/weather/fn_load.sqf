	_weather = profileNamespace getVariable ["SATGv2_World", objNull];
	setDate (_weather select 0);
	0 setOvercast (_weather select 1);