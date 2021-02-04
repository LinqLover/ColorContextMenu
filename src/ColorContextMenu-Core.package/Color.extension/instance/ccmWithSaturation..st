*ColorContextMenu-Core-converting
ccmWithSaturation: aFraction

	^ Color
		ccmHue: self ccmHue
		saturation: aFraction
		brightness: self brightness
		alpha: self alpha