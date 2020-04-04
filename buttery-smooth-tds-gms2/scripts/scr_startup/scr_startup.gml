//	Called from the rMenu's Creation Code 

random_set_seed(date_current_datetime());		// Best way to randomize the seed for HTML5 

if global.debug = true {
	if !instance_exists(oConsole) {
		instance_create_depth(0,0,0,oConsole);
	}
}