	params ["_unit"];
	_unit addEventHandler ["Killed", {(_this param [0]) setVariable ["DeathTime", Time]}];