	
	_money = switch (SATGv2CurrentQuest) do {
		case 0 : {3000};
		case 1 : {5000};
		case 2 : {2000};
	};
	
	if (SATGv2CurrentQuest == 2) then {
		chaosLevel = chaosLevel - 0.1;
	};
	
	_money remoteExec ["SATGv2_fnc_addMoney"];
	_completed = profileNameSpace getVariable ["SATGv2QuestCompleted", []];
	_completed pushBack SATGv2CurrentQuest;
	profileNameSpace setVariable ["SATGv2QuestCompleted", _completed];	
	SATGv2CurrentQuest = nil;