case "questCampBravoSearchIntel": {
	if (_taskState == "") then {
		[
			EAST, 
			_taskID, 
			["", "Найдите информатора знающего о лагере 'Браво'."], 
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
			["", "Найдите данные о местоположении лагеря."], 
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
			["", "Проверьте местоположение А."], 
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
			["", "Проверьте местоположение B."], 
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
			["", "Проверьте местоположение C."], 
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
			["", "Захватите лагерь 'Браво'."], 
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
			["", "Найдите поставщика."], 
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
			["", "Доставьте поставщика к продавцу."], 
			position trader, 
			"", 
			1, 
			True, 
			"move", 
			True
		] call BIS_fnc_taskCreate;
	};
};