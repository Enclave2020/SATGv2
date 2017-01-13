	params ["_object"];
	[_object, 0] remoteExec ["setDammage", owner _object];