*ColorContextMenu-Core-converting
ccmWithBrightness: aFraction

	^ Color
		ccmHue: self ccmHue
		saturation: self saturation
		brightness: aFraction
		alpha: self alpha