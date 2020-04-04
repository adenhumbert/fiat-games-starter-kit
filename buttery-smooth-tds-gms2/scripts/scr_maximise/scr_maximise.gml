var base_w = 480;
var base_h = 320;
var aspect = display_get_width() / display_get_height();
if (aspect > 1)
    {
    //landscape
    ww = base_h * aspect;
    hh = base_h;
    display_set_gui_maximise((display_get_width() / ww), (display_get_height() / hh), 0, 0);
    }
else
    {
    //portrait
    ww = base_w;
    hh = base_w / aspect;
    display_set_gui_maximise((display_get_width() / ww), (display_get_height() / hh), 0, 0);
    }

// An example of how you would then draw this to the GUI layer... 
draw_sprite(sprite0, 0, 64, 64);
draw_sprite(sprite0, 0, ww - 64, 64);
draw_sprite(sprite0, 0, ww - 64, hh - 64);
draw_sprite(sprite0, 0, 64, hh - 64);