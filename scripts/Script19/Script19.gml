function Menu(_x, _y, _options, _description = -1){
	with (instance_create_depth(_x, _y, -999, oMenu)) {
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		
		draw_set_font(fDico);
	}
}