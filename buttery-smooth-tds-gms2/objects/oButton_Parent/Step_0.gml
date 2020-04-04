switch (state) {
	
	case b_state.create:
		image_xscale += 0.05;
		if image_xscale >= 1 {
			image_xscale = 1;
			state = b_state.normal;
			}
		image_yscale = image_xscale;
	    break;
		
	case b_state.normal:
		if image_xscale > 1 {
		    image_xscale -= 0.02;
		    }
		image_yscale = image_xscale;
		if point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
		    state = b_state.over;
		    image_index = 1;
		    }
	    break;
		
	case b_state.over:
		if !point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
		    state = b_state.normal;
		    image_index = 0;
		    } else {
		    if image_xscale < 1.1 {
		        image_xscale += 0.02;
		        }
		    image_yscale = image_xscale;
		    if mouse_check_button_pressed(mb_left) {
		        state = b_state.pressed;
		        image_index = 2;
		        }
		    }
	    break;
		
	case b_state.pressed:
		if image_xscale > 0.8 {
	    image_xscale -= 0.2;
	    } else {
	    event_user(0);
	    image_index = 0;
	    }
	image_yscale = image_xscale;
	    break;
		
	case b_state.destroy:
		if image_xscale > 0 {
	    image_xscale -= 0.05;
	    } else {
	    event_user(1);
	    instance_destroy();
	    }
	image_yscale = image_xscale;
	    break;
}