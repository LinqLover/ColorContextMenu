private
newHatchForm

	^ (Form extent: 2 @ 2 depth: 32)
		colorAt: 0 @ 0 put: (Color gray: 0.3);
		colorAt: 0 @ 1 put: (Color gray: 0.6);
		colorAt: 1 @ 0 put: (Color gray: 0.6);
		colorAt: 1 @ 1 put: (Color gray: 0.3);
		scaledToHeight: 32