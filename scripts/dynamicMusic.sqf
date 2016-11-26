FNC_DM_Init = {	
	DM_State_Safe = 0;
	DM_State_Combat = 1;

	DM_MusicCount = 10;
	DM_TimeOut = 45;
	DM_State = DM_State_Safe;

	ace_hearing_disableVolumeUpdate = true;
	
	player addEventHandler ['Fired',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['FiredNear',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['Explosion',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	
	addMusicEventHandler ["MusicStop", {call DM_PlayMusic}];

	combatDecay = 0;
	[] spawn FNC_DM_Status;
	[] spawn FNC_DM_Handler;
};

FNC_DM_NextMusic = {
	if (DM_State == DM_State_Combat) then {
		playMusic Format ["dynamic%1", floor random DM_MusicCount];
	};
};

FNC_DM_Status = {
	while {true} do {
		if (DM_State == DM_State_Combat) then {
			if (time > combatDecay) then {
				DM_State = DM_State_Safe;
			};
		};
		/*
		else {
			if (player call BIS_fnc_enemyDetected) then {
				combatDecay = time + DM_TimeOut;
				DM_State = DM_State_Combat;
			};
		};
		*/
		sleep 1;
	};
};

FNC_DM_Handler = {
	previousBehaviour = DM_State;
	
	while {true} do {
		if (DM_State != previousBehaviour) then {
			if (DM_State == DM_State_Combat) then {
				call FNC_DM_NextMusic;
				2 fadeMusic 0.4;
			} else {
				3 fadeMusic 0;
			};
		};
		previousBehaviour = DM_State;
		sleep 1;
	};
};

if (hasInterface) then {
	call FNC_DM_Init;
};