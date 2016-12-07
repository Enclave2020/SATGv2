	params ["_logic"];
	
	if (_logic getVariable ["cleaned", False]) exitWith {};
	
	missionNamespace setVariable ["chaosLevel", chaosLevel + (_logic call SATGv2_Sector_fnc_chaosCost), True];
	_money = _logic call SATGv2_Sector_fnc_gradeCost;
	[_money] remoteExec ["SATGv2_fnc_addMoney"];
	
	(_logic getVariable "Marker") setMarkerColor "colorIndependent";
	
	["SectorCaptured",[str _money]] remoteExec ["bis_fnc_showNotification"];
	
	_logic setVariable ["cleaned", True];