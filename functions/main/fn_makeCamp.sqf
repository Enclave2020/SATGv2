	_lastCamp = profileNamespace getVariable ["SATGv2LastCamp", 0];
	// 30 MINS = 0.00005
	if (dateToNumber date - _lastCamp > (0.00005 * 4)) exitWith {
		player playAction "PutDown";
		"Campfire_burning_F" createVehicle position player;
		profileNamespace setVariable ["SATGv2LastCamp", dateToNumber date];
		hint "��� ����� �����!";
		sleep 2;
		hint "";
	};
	
	hint "�������������� �� �����!";
	sleep 2;
	hint "";