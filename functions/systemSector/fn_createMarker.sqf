	params ["_position", "_captured"];
	
	_marker = createMarker [str _position, _position];
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerSize [400, 400];
	_marker setMarkerBrush "SolidBorder";
	if (_captured) then {_marker setMarkerColor "colorIndependent"} else {_marker setMarkerColor "colorBLUFOR"};
	
	_marker