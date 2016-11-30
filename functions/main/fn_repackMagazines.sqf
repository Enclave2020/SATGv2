	player playAction "PutDown";
	
	_current = currentMagazine player;
	_magazines = magazinesAmmo player select {_x select 0 == _current};
	_maxBullets = getNumber (configFile >> "CfgMagazines" >> _current >> "count");
	_bullets = 0;
	{_bullets = _bullets + (_x select 1)} forEach _magazines;
	
	_fullMagazines = floor (_bullets / _maxBullets);
	_lastMagazine = _bullets % _maxBullets;
	
	player removeMagazines _current;
	player addMagazines [_current, _fullMagazines];
	if (_lastMagazine > 0) then {player addMagazine [_current, _lastMagazine]};
	
	hint "Ammo repacked";
	sleep 2;
	hint "";