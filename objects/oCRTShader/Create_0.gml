var shader_config = {
	geometry: {
		content_width: 400,
		content_height: 256,
		do_int_scale: false,
		zoom: 1.1,
		border_width: 0
	},
	ntsc: {
		enabled: true
	},
	lines: {
		deconvergence: 0.3333,
		image_softness: 0.75
	}
}

my_crt = new CRT(shader_config);
demo_title = "Retribution";