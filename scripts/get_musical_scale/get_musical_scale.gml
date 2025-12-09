function get_musical_scale(_scale){
	switch(_scale) {
		case scale_list.major:					return [0, 2, 4, 5, 7, 9, 11, 12];
		case scale_list.harmonic_minor:			return [0, 2, 3, 5, 7, 8, 11, 12]
		case scale_list.melodic_minor:			return [0, 2, 3, 5, 7, 9, 11, 12]
		case scale_list.blues_scale:			return [0, 3, 5, 6, 7, 10, 12]
		case scale_list.chromatic_scale:		return [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
		case scale_list.pentatonic_scale:		return [0, 2, 4, 7, 9, 12]
		case scale_list.diminished_scale:		return [0, 1, 3, 4, 6, 7, 9, 10, 12]
		case scale_list.dorian_scale:			return [0, 2, 3, 5, 6, 7, 9, 10, 12]
		case scale_list.japenese_mode:			return [0, 1, 5, 7, 8, 12]
		case scale_list.phrygian:				return [0, 1, 3, 5, 7, 8, 10, 12]
		case scale_list.hungarian_minor:		return [0, 2, 3, 6, 7, 8, 11, 12]
		case scale_list.persion:				return [0, 1, 4, 5, 6, 8, 11, 12]
	}
}