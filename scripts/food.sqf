FOOD_createWater = {
	params ["_position"];
	_waterPool = ["Land_Can_V2_F", "Land_BottlePlastic_V1_F", "Land_Canteen_F", "Land_Can_V1_F", "Land_BottlePlastic_V2_F"];
	_object = (selectRandom _waterPool) createVehicle _position;
	_object addAction ["Take water", {(param [1]) call FOOD_addWater; deleteVehicle (param [0])}];
};

FOOD_createFood = {
	params ["_position"];
	_foodPool = ["Land_TacticalBacon_F", "Land_BakedBeans_F", "Land_CerealsBox_F", "Land_PowderedMilk_F", "Land_RiceBox_F"];
	_object = (selectRandom _foodPool) createVehicle _position;
	_object addAction ["Take food", {(param [1]) call FOOD_addFood; deleteVehicle (param [0])}];
};

FOOD_addWater = {
	params ["_object"];
	_food = _object getVariable ["Food", [0, 0]];

	_object setVariable ["Food", [(_food select 0) + 1, _food select 1]];
	call HUD_Update;
};

FOOD_addFood = {
	params ["_object"];
	_food = _object getVariable ["Food", [0, 0]];

	_object setVariable ["Food", [_food select 0, (_food select 1) + 1]];
	call HUD_Update;
};

FOOD_Handler = {
	
};


if (hasInterface) then {
	[] spawn FOOD_Handler;
};

