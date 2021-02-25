*ColorContextMenu-Core-instance creation-override
new

	| radial |
	radial := (Smalltalk classNamed: #RadialMenuMorph) ifNil: [^ super new].
	radial replaceEveryMenuMorph ifFalse: [^ super new].
	^ radial new