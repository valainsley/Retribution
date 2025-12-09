function get_note_frequency(_note, _octave) {
	return get_musical_note(_note) * power(2, _octave)
}