*ColorContextMenu-Core-converting
ccmWithLightness: aFraction

	^ Color
		ccmHue: self ccmHue
		saturation: self saturation
		lightness: aFraction
		alpha: self alpha