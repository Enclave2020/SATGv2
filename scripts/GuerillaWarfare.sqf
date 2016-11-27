#include "GuerillaWarfareVehicles.sqf";

GW_SaveName = "SATGv2";

FNC_GW_Reset = {
	params ["_name"];
	
	if (isServer) then {	
		{deleteVehicle _x} forEach vehicles;
		profileNamespace setVariable [_name + "_Vehicles", nil];
		profileNamespace setVariable [_name + "_World", nil];
		call VEH_Spawn;
		
		"restart" call BIS_fnc_endMissionServer;
	};
	
	if (hasInterface) then {
		profileNamespace setVariable ["SATGMoney", nil];
		profileNamespace setVariable [_name + "_Player", nil];
		endMission "restart";
	};
};

FNC_GW_Autosave = {
	while {true} do {
		sleep 10;
		GW_SaveName call FNC_GW_Save;
	};
};

if (isServer) then {
	[GW_SaveName, True] call FNC_GW_Load;
	[] spawn FNC_GW_Autosave;
};

if (hasInterface) then {
	[] spawn {
		cutText ["Загрузка...","BLACK FADED"];
		sleep 1;
		[GW_SaveName, True] call FNC_GW_Load;
		sleep 1;
		cutText ["","BLACK IN"];
		[] spawn FNC_GW_Autosave;
	};
};