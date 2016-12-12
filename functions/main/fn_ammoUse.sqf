	if ((player getVariable ["ammoCount", 0]) == 0) exitWith {};
	if (isNull cursorObject) exitWith {};
	if (isPlayer cursorObject) exitWith {};
	_valid = (cursorObject isKindOf "Air") or (cursorObject isKindOf "Car") or (cursorObject isKindOf "Tank");
	if (not _valid) exitWith {};
	
	player playAction "PutDown";
	
	_ammoBox = (player getVariable ["ammoCount", 0]) - 1;
	if ("prob_ammo" call SATGv2_Perks_fnc_active) then {
		if (random 1 > 0.5) then {
			_ammoBox = _ammoBox + 1;
		};
	};
	player setVariable ["ammoCount", _ammoBox max 0];
	
	titleText [localize "str_SATGv2_ammoUse", "PLAIN DOWN"];
	
	call SATGv2_Hud_fnc_update;
	cursorObject setVehicleAmmo 1;