	openMap True; 
	titleText [localize 'str_SATGv2_dropArtSelect', 'PLAIN DOWN']; 
	onMapSingleClick "if (_shift) then {openMap False; [_pos] spawn SATGv2_fnc_artShot; onMapSingleClick ''}";