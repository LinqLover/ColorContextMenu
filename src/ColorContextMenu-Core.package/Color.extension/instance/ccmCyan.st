*ColorContextMenu-Core-accessing
ccmCyan

	| black |
	(black := self ccmCmykBlack) = 1 ifTrue: [^ 0].
	^ 1 - self red - black / (1 - black)