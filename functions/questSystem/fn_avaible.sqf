	_completedQuests = profileNameSpace getVariable ["SATGv2QuestCompleted", []];
	_avaibleQuests = [0, 1];
	_avaibleQuests = _avaibleQuests - (_avaibleQuests arrayIntersect _completedQuests);
	_avaibleQuests