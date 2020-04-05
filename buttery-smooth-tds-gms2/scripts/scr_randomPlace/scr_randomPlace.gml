randomize(); 
do {
	var _x = irandom(room_width);
	var _y = irandom(room_width);
} until (place_free(_x,_y) and ((_x<room_width) and (_y<room_height)));
x = _x;
y = _y;
image_angle = irandom(359);
