	if ((player getVariable ["ToolkitCount", 0]) == 0) exitWith {};
	if (isNull cursorObject) exitWith {};
	if (isPlayer cursorObject) exitWith {};
	_damaged = selectMax (getAllHitPointsDamage cursorObject select 2) > 0;
	if (not _damaged) exitWith {titleText [localize "str_SATGv2_toolkitCantUse", "PLAIN DOWN"];};
	
	
	player playAction "PutDown";
	_toolkits = (player getVariable ["ToolkitCount", 0]) - 1;
	if ("prob_repair" call SATGv2_Perks_fnc_active) then {
		if (random 1 > 0.5) then {
			_toolkits = _toolkits + 1;
		};
	};
	player setVariable ["ToolkitCount", _toolkits max 0];		
	titleText [localize "str_SATGv2_toolkitUse", "PLAIN DOWN"];
	
	call SATGv2_Hud_fnc_update;
	
	cursorObject setDammage 0;
	if (fuel cursorObject < 0.1) then {cursorObject setFuel 0.1};