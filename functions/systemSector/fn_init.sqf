if (isServer) then {
	// ["Mount","Name","Strategic","StrongpointArea","FlatArea","FlatAreaCity","FlatAreaCitySmall","CityCenter","Airport","NameMarine","NameCityCapital","NameCity","NameVillage","NameLocal","Hill","ViewPoint","RockArea","BorderCrossing","VegetationBroadleaf","VegetationFir","VegetationPalm","VegetationVineyard","fakeTown","Area"]
	groupLogic = createGroup sideLogic;

	{[_x, 1] call SATGv2_Sector_fnc_createLogic} forEach nearestLocations [[0, 0, 0], ["Hill"], 50000];	
	{[_x, 2] call SATGv2_Sector_fnc_createLogic} forEach nearestLocations [[0, 0, 0], ["FlatAreaCity"], 50000];
	{[_x, 3] call SATGv2_Sector_fnc_createLogic} forEach nearestLocations [[0, 0, 0], ["CityCenter"], 50000];	
	{[_x, 4] call SATGv2_Sector_fnc_createLogic} forEach nearestLocations [[0, 0, 0], ["NameCityCapital"], 50000];		
	{[_x, 5] call SATGv2_Sector_fnc_createLogic} forEach nearestLocations [[0, 0, 0], ["Airport"], 50000];
};