function av_load_sound_list() {
	var _characters = "abcdefghijklmnopqrstuvwxyz0123456789"
	var _sounds = []
	var _prefixes = ["snd_light_", "snd_robot_", "snd_deep_", "snd_squeaky_", "snd_tired_"]
	for (var _i = 0; _i < array_length(_prefixes); _i++) {
	array_push(_sounds, [])
		for (var _o = 0; _o < string_length(_characters) + 1; _o++) {
			var _file_string = _prefixes[_i] + string_char_at(_characters, _o)
			var _file =  asset_get_index(_file_string)
			array_push(_sounds[_i], _file)
		}
	}
	global.animalvoice_soundlist = _sounds
}