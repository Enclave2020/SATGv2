	_completedQuests = profileNameSpace getVariable ["SATGv2QuestCompleted", []];
	_avaibleQuests = [0, 1, 2];
	_avaibleQuests = _avaibleQuests - (_avaibleQuests arrayIntersect _completedQuests);
	_avaibleQuests