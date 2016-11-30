if (hasInterface) then {
	DM_Music = ["EventTrack01_F_EPA", "EventTrack01a_F_EPA", "EventTrack02_F_EPA", "EventTrack02_F_EPC", "EventTrack02a_F_EPA", "EventTrack02b_F_EPC", "EventTrack03_F_EPA", "EventTrack03_F_EPC", "EventTrack03a_F_EPA", "LeadTrack01a_F_EPB", "LeadTrack02_F", "LeadTrack02_F_EPA", "LeadTrack02_F_EPB", "LeadTrack02_F_EPC", "LeadTrack02a_F_EPA", "LeadTrack02a_F_EPB", "LeadTrack02b_F_EPA", "LeadTrack02b_F_EPB", "LeadTrack03_F", "LeadTrack03_F_EPA", "LeadTrack04_F", "LeadTrack04a_F", "LeadTrack05_F", "LeadTrack05_F_EPC", "LeadTrack06_F"];

	DM_State_Safe = 0;
	DM_State_Combat = 1;

	DM_TimeOut = 45;
	DM_State = DM_State_Safe;

	ace_hearing_disableVolumeUpdate = true;
	
	call SATGv2_DynamicMusic_fnc_eventInit;
	
	addMusicEventHandler ["MusicStop", {call SATGv2_DynamicMusic_fnc_playMusic}];

	combatDecay = 0;
	[] spawn SATGv2_DynamicMusic_fnc_status;
	[] spawn SATGv2_DynamicMusic_fnc_handler;
};