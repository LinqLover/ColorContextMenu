construction
add: aString target: target action: evaluable

	^ self addItemMorph: (RadialMenuItemMorph new
		label: aString;
		target: target;
		action: evaluable;
		yourself)