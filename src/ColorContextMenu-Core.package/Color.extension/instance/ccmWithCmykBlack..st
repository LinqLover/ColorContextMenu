*ColorContextMenu-Core-converting
ccmWithCmykBlack: aFraction

	^ Color
		ccmCyan: self ccmCyan
		magenta: self ccmMagenta
		yellow: self ccmYellow
		black: aFraction
		alpha: self alpha