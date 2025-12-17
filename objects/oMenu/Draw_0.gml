draw_set_halign(fa_center);
draw_set_font(fDico);

var _spacing = 40

for (var i = 0; i < array_length(menu); ++i) {
	draw_set_color(c_white);
	if i = index {
		draw_set_color(c_xanadu);
	}
    draw_text_scribble((room_width/2), (room_height * .4 + i * _spacing), menu[i]);
}