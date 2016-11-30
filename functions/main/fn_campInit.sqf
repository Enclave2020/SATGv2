	player addEventHandler ["Fired", {
		if (typeOf param[6] == "B_IRStrobe") then {
			[param[6]] spawn FNC_campCreate;
		};
	}];