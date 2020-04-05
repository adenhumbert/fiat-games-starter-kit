if !instance_exists(oDelta) {
	instance_create_depth(0,0,0,oDelta)
}


movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");


enum movement {
	directional=0,
	absolute=1
}

movement = movement.directional;


move_speed = 400;

scr_randomPlace();