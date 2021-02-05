*ColorContextMenu-Core-converting
ccmWithRed: aFraction

	^ Color
		r: aFraction
		g: self green
		b: self blue
		alpha: self alpha