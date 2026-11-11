if !audio_is_playing(sndBIOSBoot){
	room_goto(main_menu);
	if room = main_menu {
		instance_destroy(oInit);
	}
}
else {
	return;
}
	