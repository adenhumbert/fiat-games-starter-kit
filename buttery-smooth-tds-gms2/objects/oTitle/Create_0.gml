enum b_state
{
create,
normal, 
pressed,
over,
destroy
}

state = b_state.create;

var _x = room_width /2 ;
var _y = room_height *2/3;
instance_create_layer(_x, _y - 100, "UntitledLayer", oButton_Play);
instance_create_layer(_x, _y + 100, "UntitledLayer", oButton_Quit);