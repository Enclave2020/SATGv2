case "questCampBravoSearchIntel": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask1"], 
			[5946.65,11197.2,0.000213623], 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questCampBravoSearchIntel2": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask2"], 
			[5946.65,11197.2,0.000213623], 
			"", 
			1, 
			True, 
			"search", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questCampBravoMovePointA": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask3"], 
			[5305.81,5522.42,3.05176e-005], 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questCampBravoMovePointB": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask4"], 
			[9752.35,12407.3,0.000213623], 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};

// RIGHT

case "questCampBravoMovePointC": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask5"], 
			[4029.93,11659.1,-9.15527e-005], 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questCampBravoCapture": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questCampTask6"], 
			[0, 0, 0], 
			"", 
			1, 
			True, 
			"attack", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questOldFriendMove": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questOldTask1"], 
			[3120.17,9235.14,0.00143433], 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};

case "questOldFriendRescue": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", localize "str_SATGv2_questOldTask2"], 
			position trader, 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};