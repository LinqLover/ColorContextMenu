*ColorContextMenu-Core-converting
ccmWithCyan: aFraction

	^ Color
		ccmCyan: aFraction
		magenta: self ccmMagenta
		yellow: self ccmYellow
		black: self ccmCmykBlack
		alpha: self alpha