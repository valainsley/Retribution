crt_gui_begin();

draw_set_halign(fa_center);
draw_set_font(fDico);
var _spacing = 22

for (var i = 0; i < array_length(menu); ++i) {
	if i != index {
		scribble_anim_disabled(true);
		draw_set_color(c_white);
	} else {
		scribble_anim_disabled(false);
		draw_set_color(c_deep_pink)
	}
    draw_text_scribble((room_width/2), (room_height * .5 + i * _spacing), menu[i]);
}

crt_gui_end();