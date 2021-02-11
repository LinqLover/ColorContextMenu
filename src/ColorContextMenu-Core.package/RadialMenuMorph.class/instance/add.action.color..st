construction
add: aString action: evaluable color: aColor

	^ self addItemMorph: (RadialMenuItemMorph new
		label: aString;
		action: evaluable;
		baseColor: aColor;
		yourself)