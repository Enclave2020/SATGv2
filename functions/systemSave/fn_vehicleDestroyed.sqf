	_destroyed = True;
	{if (_x != 1) exitWith {_destroyed = False}} forEach _this;
	_destroyed