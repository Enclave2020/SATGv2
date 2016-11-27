FNC_DM_eventInit = {
	waitUntil{player == player};
	player addEventHandler ['Fired',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['FiredNear',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
	player addEventHandler ['Explosion',{DM_State = DM_State_Combat; combatDecay = time + DM_TimeOut}];
};

FNC_DM_Init = {	
	DM_Music = ["EventTrack01_F_EPA", "EventTrack01a_F_EPA", "EventTrack02_F_EPA", "EventTrack02_F_EPC", "EventTrack02a_F_EPA", "EventTrack02b_F_EPC", "EventTrack03_F_EPA", "EventTrack03_F_EPC", "EventTrack03a_F_EPA", "LeadTrack01a_F_EPB", "LeadTrack02_F", "LeadTrack02_F_EPA", "LeadTrack02_F_EPB", "LeadTrack02_F_EPC", "LeadTrack02a_F_EPA", "LeadTrack02a_F_EPB", "LeadTrack02b_F_EPA", "LeadTrack02b_F_EPB", "LeadTrack03_F", "LeadTrack03_F_EPA", "LeadTrack04_F", "LeadTrack04a_F", "LeadTrack05_F", "LeadTrack05_F_EPC", "LeadTrack06_F"];

	DM_State_Safe = 0;
	DM_State_Combat = 1;

	DM_TimeOut = 45;
	DM_State = DM_State_Safe;

	ace_hearing_disableVolumeUpdate = true;
	
	call FNC_DM_eventInit;
	
	addMusicEventHandler ["MusicStop", {call DM_PlayMusic}];

	combatDecay = 0;
	[] spawn FNC_DM_Status;
	[] spawn FNC_DM_Handler;
};

FNC_DM_NextMusic = {
	if (DM_State == DM_State_Combat) then {
		playMusic selectRandom DM_Music;
	};
};

FNC_DM_Status = {
	while {true} do {
		if (DM_State == DM_State_Combat) then {
			if (time > combatDecay) then {
				DM_State = DM_State_Safe;
			};
		};

		sleep 1;
	};
};

FNC_DM_Handler = {
	previousBehaviour = DM_State;
	
	while {true} do {
		if (DM_State != previousBehaviour) then {
			if (DM_State == DM_State_Combat) then {
				call FNC_DM_NextMusic;
				2 fadeMusic 0.6;
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