	[] spawn {
		while {true} do {
			whPoolVeh = (player nearEntities [["Car", "Tank"], 200]);
			sleep 1;
		}
	};

	addMissionEventHandler ["Draw3D", { 
		{
			drawIcon3D [getText (configFile >> "CfgVehicles" >> typeOf _x >> "picture"), [1, 1, 1, 0.66], (position _x) vectorDiff (getCenterOfMass _x), 1, 1, 0]; 	
		} forEach whPoolVeh;
	}];	