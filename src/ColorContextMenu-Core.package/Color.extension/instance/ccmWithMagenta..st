*ColorContextMenu-Core-converting
ccmWithMagenta: aFraction

	^ Color
		ccmCyan: self ccmCyan
		magenta: aFraction
		yellow: self ccmYellow
		black: self ccmCmykBlack
		alpha: self alpha