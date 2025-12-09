function av_voice(_voice_type = animalvoice_list.normal, _pitch_variance = 0) constructor {
    voice_type = animalvoice_list.normal;
    voice_volume = AV_GAIN;
    pitch_variance = 0;
	note = note_list.c;
	octave = 4;
	base_freqeuncy = get_note_frequency(note_list.c, 4)
	scale = scale_list.monotone;
	note_variance = 0;

	static letter_to_sound_file = function(_letter) {
		_letter = string_lower(_letter)
		// Checks if sound is in soundlist
		var _sound_index = string_pos(_letter, SOUNDS)
		if _sound_index == 0 and _letter != "a" return undefined;
		var _sound_name = global.animalvoice_soundlist[voice_type][_sound_index];
		return _sound_name;
	}

    set_voice_type = function(_type){
        voice_type = _type;
        return self;
    }

    set_voice_volume = function(_vol){
        voice_volume = _vol;
        return self;
    }

    set_pitch_variance = function(_pitch) {
        pitch_variance = _pitch;
        return self;
    }

	set_note = function(_note) {
        note = _note;
        return self;
    }
	
	set_base_frequency = function(_base_note, _base_octave) {
        base_note = get_note_frequency(_base_note, _base_octave);
        return self;
    }
	
	set_octave = function(_octave) {
        octave = _octave;
        return self;
    }
	
	set_scale = function(_scale) {
        scale = _scale;
        return self;
    }
	
	set_note_variance = function(_note_variance) {
        note_variance = _note_variance;
        return self;
    }
	
	set_voice_musical = function(_note, _octave, _scale, _note_variance) {
		note = _note
		octave = _octave
		scale = _scale
		note_variance = _note_variance
		return self;
	}
	
    get_voice_type = function() {
        return voice_type;
    }

    get_voice_volume = function() {
        return voice_volume;
    }

    get_pitch_variance = function() {
        return pitch_variance;
    }
	
	get_note = function(_note) {
        return note;
    }
	
	get_base_frequency = function(_base_note) {
        return base_freqeuncy;
    }
	
	get_octave = function(_octave) {
        return octave;
    }
	
	get_scale = function(_scale) {
        return scale;
    }
	
	get_note_variance = function(_note_variance) {
        return note_variance;
    }
}