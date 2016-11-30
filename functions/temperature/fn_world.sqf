	_timeWarm = 0 max (8 - abs(14 - (date param[3])));
	_snowWarm = 12 - thirsk_snowDens;
	_overcastWarm = (1 - overCast) / 0.12;
	(_overcastWarm + _snowWarm + _timeWarm - 30)