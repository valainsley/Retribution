function get_musical_note(_note){
	static note_frequencies = [
		16.35, // C
		17.32, // C# / Dflat
		18.35, // D
		19.45, // D# / Elat
		20.6,  // E
		21.83, // F
		23.12, // F# / Gflat
		24.5, //  G
		25.96, // G# / Aflat
		27.5, //  A
		29.14, // A# / Bflat
		30.87 //  B
	];
	return note_frequencies[_note];
}


