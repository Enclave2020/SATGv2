	waitUntil{player == player};
	player addEventHandler ['Fired',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['FiredNear',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['Explosion',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];