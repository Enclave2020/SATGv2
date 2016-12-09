if (hasInterface) then {
	// XP ADD	
	["xpAdd", {
		(profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) params ["_level", "_xp", "_points"];
		_xp = _xp + _this;
		_xpNextLevel = ((_level + 1) ^ 3) * 10;
		hint str _xpNextLevel;
		profileNameSpace setVariable ["SATGv2Level", [_level, _xp, _points]];
		
		if (_xp >= _xpNextLevel) then {
			["xpNewLevel"] call CBA_fnc_localEvent;
		};
	}] call CBA_fnc_addEventHandler;
	
	// Next level
	["xpNewLevel", {
		(profileNameSpace getVariable ["SATGv2Level", [0, 0, 0]]) params ["_level", "_xp", "_points"];
		profileNameSpace setVariable ["SATGv2Level", [_level + 1, _xp, _points + 1]];
	}] call CBA_fnc_addEventHandler;	
};