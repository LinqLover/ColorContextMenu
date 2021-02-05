*ColorContextMenu-Core-instance creation
ccmCyan: cyan magenta: magenta yellow: yellow black: black alpha: alpha

	^ self
		r: (1 - cyan) * (1 - black)
		g: (1 - magenta) * (1 - black)
		b: (1 - yellow) * (1 - black)
		alpha: alpha