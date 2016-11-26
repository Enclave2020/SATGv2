_intro = profileNamespace getVariable ["SATGv2Intro", True];

if (_intro) then {
	_plane = "RHS_C130J" createVehicleLocal position logicIntro;
	//_plane locked True;
	player moveInCargo _plane;
	_plane execFSM "intro.fsm";
};