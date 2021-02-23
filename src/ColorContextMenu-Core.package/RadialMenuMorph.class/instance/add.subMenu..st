construction
add: aString subMenu: evaluable

	^ self addItemMorph: (RadialMenuItemMorph new
		label: aString;
		subMenu: evaluable;
		yourself)