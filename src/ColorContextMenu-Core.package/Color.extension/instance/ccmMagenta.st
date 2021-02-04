*ColorContextMenu-Core-accessing
ccmMagenta

	| black |
	(black := self ccmCmykBlack) = 1 ifTrue: [^ 0].
	^ 1 - self green - black / (1 - black)