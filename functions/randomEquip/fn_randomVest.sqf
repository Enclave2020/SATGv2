	params ["_unit"];
	
	_vests = [
		["V_TacVest_blk", 0.0],
		["V_PlateCarrier1_blk", 0.2],
		["V_PlateCarrier2_blk", 0.5],
		["V_PlateCarrierSpec_blk", 0.8]
	] apply {[_x select 0, (_x select 1) * (0.9 / chaosLevel)]};
	
	_index = 0;
	_prob = random 1;
	{
		if (_x select 1 > _prob) exitWith {};
		_index = _forEachIndex;
	} forEach _vests;
	
	removeVest _unit;
	_unit addVest (_vests select _index select 0);