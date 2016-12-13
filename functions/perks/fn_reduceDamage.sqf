	player addEventHandler ["HandleDamage", {
		_this params ["_unit", "_selection", "_damage"];
		(damage _unit) + (_damage * 0.66)
	}];