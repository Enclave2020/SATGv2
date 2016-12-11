	params ["_logic"];
	_grade = _logic getVariable "sectorGrade";
	_cost = 0;
	switch (_grade) do {
		case 1: {_cost = 500};
		case 2: {_cost = 1000};
		case 3: {_cost = 2000};
		case 4: {_cost = 5000};
		case 5: {_cost = 20000};
	};
	
	_cost