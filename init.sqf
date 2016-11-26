cutText ["","BLACK FADED"];

#include "scripts\randomEquip.sqf"
#include "scripts\scoreManager.sqf"
#include "scripts\GuerillaWarfare.sqf"
#include "scripts\units.sqf"
#include "scripts\sector.sqf"
#include "scripts\temperature.sqf"
//#include "scripts\food.sqf"
#include "scripts\weather.sqf"
#include "scripts\randomVehicles.sqf"
#include "scripts\hud.sqf"
#include "scripts\trader.sqf"
//#include "scripts\shop.sqf"
#include "scripts\dynamicMusic.sqf"
#include "scripts\FM.sqf"
#include "scripts\shopV2.sqf"
#include "scripts\player.sqf"

if (not isMultiplayer) then {
	player allowDamage False;
};

/*
if (hasInterface) then {
	onPlayerDisconnected "deleteVehicle player";
};
*/