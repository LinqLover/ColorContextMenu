*ColorContextMenu-Core-converting
ccmWithHue: aFraction

	^ Color
		ccmHue: aFraction
		saturation: self saturation
		brightness: self ccmBrightness
		alpha: self alpha