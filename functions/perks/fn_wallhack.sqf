	[] spawn {
		while {true} do {
			whPoolMan = (player nearEntities ["Man", 50]) select {side _x == WEST};
			sleep 1;
		}
	};

	addMissionEventHandler ["Draw3D", { 
		{
			drawIcon3D ["\a3\ui_f\data\gui\cfg\hints\BasicLook_ca.paa", [0, 0, 0, 0.5], ASLtoAGL eyePos _x]; 	
		} forEach whPoolMan;
	}];	
	
	/*
	params ["_action"];
	
	switch (_action) do {
		case 0 : {
				wallhackPool = [[], [], []];
				addMissionEventHandler ["Draw3D", { 
					{
						_icon = _x select 0;
						{
							drawIcon3D [_icon, [1, 1, 1, 0.5], position _x]; 	
						} forEach (_x select 1);
					} forEach wallhackPool;
				}];
				};
				
		case 1 : {
			[] spawn {
				while {true} do {
					_pool = (player nearEntities ["Man", 50]) select {side _x == WEST};
					wallhackPool set [0, ]
					
					sleep 1;
				};
			};
		};
	
	};
	*/

