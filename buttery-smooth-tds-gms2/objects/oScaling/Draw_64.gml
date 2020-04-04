var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
draw_sprite(sTest, 0, 64, 64);
draw_sprite(sTest, 0, _gw - 64, 64);
draw_sprite(sTest, 0, _gw - 64, _gh- 64);
draw_sprite(sTest, 0, 64, _gh - 64);