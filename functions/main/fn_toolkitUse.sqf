	if (isNull cursorObject) exitWith {};
	if (isPlayer cursorObject) exitWith {};
	if (damage cursorObject == 0) exitWith {titleText [localize "str_SATGv2_toolkitCantUse", "PLAIN DOWN"];};
	
	player playAction "PutDown";
	_toolkits = player getVariable ["ToolkitCount", 0];
	player setVariable ["ToolkitCount", (_toolkits - 1) max 0];
	titleText [localize "str_SATGv2_toolkitUse", "PLAIN DOWN"];
	
	call SATGv2_Hud_fnc_update;
	
	cursorObject setDammage 0;
	if (fuel cursorObject < 0.1) then {cursorObject setFuel 0.1};