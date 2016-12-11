	params ["_type"];
	((isClass (configfile >> "CfgWeapons" >> _type >> "GL_3GL_F")) or (isClass (configfile >> "CfgWeapons" >> _type >> "EGLM")))