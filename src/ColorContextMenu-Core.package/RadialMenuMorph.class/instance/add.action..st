construction
add: aString action: evaluable

	^ self addItemMorph: (RadialMenuItemMorph new
		label: aString;
		action: evaluable;
		yourself)