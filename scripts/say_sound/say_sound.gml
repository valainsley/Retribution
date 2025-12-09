function say_sound(_text, _index, _voice) {

	// Gets the sound file
	var _type   = _voice.get_voice_type();
	var _letter = string_char_at(_text, _index);
	var _sound  = _voice.letter_to_sound_file(_letter);
	
	if(_sound == undefined) return;
	
	var _pitch;
	if _voice.scale == scale_list.monotone {
		var _variance = random(_voice.pitch_variance);
		_pitch = 2 * (1 + _variance);
	
		// Increases the pitch if the letters are near a question mark, to mimick how people increase their pitch when asking questions
		if is_question(_text, _index) _pitch += .5;	
	} else {
		var _octave = _voice.octave;
		var _scale_steps = get_musical_scale(_voice.scale)
		var _step = _scale_steps[clamp(irandom(_voice.note_variance), 0, array_length(_scale_steps) - 1)];
		var _note = _voice.note + _step
		if is_question(_text, _index) _note += 12;
		// If a note is greater then 12 this code will convert it back into array length and add an octave to the note
		_octave += floor(_note / 12);
		_note = ((_note % 12) + 12) mod 12;

		var _note_frequency = get_note_frequency(_note, _octave)
		var _variance = random(_voice.pitch_variance);

		_pitch = (_note_frequency / _voice.base_freqeuncy) ;

	}
	
	audio_play_sound(_sound, AV_PRIORITY, false, AV_GAIN, 0, _pitch)
}