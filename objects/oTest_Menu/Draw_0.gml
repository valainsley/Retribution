draw_set_halign(fa_center);
draw_set_font(fPublic_Pixel);
var _spacing = 22

for (var i = 0; i < array_length(menu[sub_menu]); ++i) {
	if i != index {
		scribble_anim_disabled(true);
		draw_set_color(c_white);
	} else {
		scribble_anim_disabled(false);
		draw_set_color(#FF3855)
	}
    draw_text_scribble((room_width/4), (room_height * .15 + i * _spacing), menu[i]);
}