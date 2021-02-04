*ColorContextMenu-Core-converting
ccmWithYellow: aFraction

	^ Color
		ccmCyan: self ccmCyan
		magenta: self ccmMagenta
		yellow: aFraction
		black: self ccmCmykBlack
		alpha: self alpha