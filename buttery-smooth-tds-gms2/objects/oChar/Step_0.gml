var move_speed_this_frame = move_speed*global.seconds_passed;

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++) {
	var this_key = movement_inputs[i];
	if keyboard_check(this_key) {
		var this_angle, a;
		switch (movement) {
			case movement.directional:
				this_angle = i*90;
				break;
			case movement.absolute:
				a = point_direction(x,y,mouse_x,mouse_y)
				this_angle = (i*90)+a-90;
				break;
		}
	move_xinput += lengthdir_x(1, this_angle);
	move_yinput += lengthdir_y(1, this_angle);
	}
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	var move_dir = point_direction(0,0,move_xinput,move_yinput);
	move(move_speed_this_frame,  move_dir);
}
		
_angle = point_direction(x,y,mouse_x,mouse_y)
image_angle = _angle; 
