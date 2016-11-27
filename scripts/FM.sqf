FM_TrackNext = {
	_track = "";
	waitUntil {_track = Format ["radio%1", floor random 10]; _track != FM_TrackLast};
	
	FM_TrackLast = _track;
	playMusic _track;
	missionNamespace setVariable ["FM", [_track, serverTime], True];
};

FM_ServerInit = {
	addMusicEventHandler ["MusicStop", {call FM_TrackNext}];
	call FM_TrackNext;
};

FM_MusicStop = {
	playMusic "";
	FM_TrackLast = "";	
	0 fadeMusic 1;
};

FM_ClientHandler = {
	private "_radio";
	
	while {vehicle player != player} do {
		if (vehicle player call FM_RadioEnabled) then {
			_radio = missionNamespace getVariable ["FM", ["stray", serverTime]];
			if (FM_TrackLast != _radio select 0) then {
				0 fadeMusic 0.8;
				hint Format ["%1: TRYING TO PLAY %2, %3", time, _radio select 0, serverTime - (_radio select 1)];
				playMusic [_radio select 0, serverTime - (_radio select 1)];
			};			
		} else {
			call FM_MusicStop;
		};
		sleep 0.5;
	};
	call FM_MusicStop;
};

FM_RadioEnabled = {
	params ["_vehicle"];
	_vehicle getVariable ["FM_Status", False]
};

FM_RadioChangeState = {
	params ["_vehicle"];
	
	_id = _vehicle getVariable ["FM_ActionID", 0];
	
	_vehicle setUserActionText [_id, if (call FM_RadioEnabled) then {FM_TurnOn} else {FM_TurnOff}];
	_vehicle setVariable ["FM_Status", not call FM_RadioEnabled];
};

FM_VehicleAddAction = {
	params ["_vehicle"];
	
	_id = _vehicle addAction [FM_TurnOn, {[_this select 0] remoteExec ["FM_RadioChangeState", -2]}, nil, 10, true, true, "", "player == driver _target"];
	_vehicle setVariable ["FM_ActionID", _id];	
};

FM_ClientInit = {
	FM_TurnOn = "<t color='#00ff00'>TanoaFM</t>";
	FM_TurnOff = "<t color='#ff0000'>TanoaFM</t>";
	
	{_x call FM_VehicleAddAction} forEach vehicles;
	player addEventHandler ["GetInMan", {FM_Handle = [] spawn FM_ClientHandler}];
	
	addMusicEventHandler ["MusicStart", {FM_TrackLast = _this select 0}];
	addMusicEventHandler ["MusicStop", {FM_TrackLast = ""}];
};

FM_TrackLast = "";
if (isDedicated) then {[] spawn FM_ServerInit};
if (hasInterface) then {call FM_ClientInit};

