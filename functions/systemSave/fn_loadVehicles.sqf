	params ["_name", "_remove"];
	
	_data = profileNamespace getVariable _name + "_Vehicles";
	if (count _data == 0) exitWith {call SATGv2_fnc_randomVehicles};
	
	if (_remove) then {{deleteVehicle _x} forEach call SATGv2_Save_fnc_vehicles};
	{
			if (not ((_x select 2) call SATGv2_Save_fnc_vehicleDestroyed)) then {	
				_vehicle = createVehicle [_x select 0, _x select 1, [], 0, "CAN_COLLIDE"];
				[_vehicle, _x select 2] call SATGv2_Save_fnc_loadDamage;		
				_vehicle setDir (_x select 3);
				[_vehicle, _x select 4] call SATGv2_Save_fnc_loadCargo;
				_vehicle setFuel (_x select 5);
				_vehicle setVectorUp (_x select 6);
				
				// AMMO
				_ammoInfo = _x param [7, []];
				if (count _ammoInfo > 0) then {
					_vehicle setVehicleAmmo 0;
					{_vehicle addMagazineTurret [_x select 0, _x select 1, _x select 2]} forEach _ammoInfo;
				};
			};
	} forEach _data;