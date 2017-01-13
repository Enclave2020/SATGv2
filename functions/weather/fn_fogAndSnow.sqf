	_fogTime = abs (14 - (date param [3])) / 13;
	
	15 setFog [_fogTime min 0.2, 0];