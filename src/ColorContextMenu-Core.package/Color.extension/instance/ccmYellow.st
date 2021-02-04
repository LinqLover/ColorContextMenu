*ColorContextMenu-Core-accessing
ccmYellow

	| black |
	(black := self ccmCmykBlack) = 1 ifTrue: [^ 0].
	^ 1 - self blue - black / (1 - black)