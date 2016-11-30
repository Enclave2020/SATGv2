	params ["_logic"];
	
	_grade = _logic getVariable "sectorGrade";
	_cost = 0;	
	switch (_grade) do {
		case 1: {_cost = 0.005};
		case 2: {_cost = 0.01};
		case 3: {_cost = 0.02};
		case 4: {_cost = 0.1};
		case 5: {_cost = 0.3};
	};	
	
	_cost