*ColorContextMenu-Core-accessing
ccmLightness

	| channels |
	channels := {self red. self green. self blue}.
	^ channels max + channels min / 2