submorphs-add/remove
addItemMorph: aRadialMenuItemMorph

	aRadialMenuItemMorph
		layoutFrame: LayoutFrame fullFrame;
		hResizing: #spaceFill; vResizing: #spaceFill.
	(aRadialMenuItemMorph isKindOf: RadialMenuItemMorph) ifTrue: [
		self privateRegisterItem: aRadialMenuItemMorph].
	
	self addMorphBack: aRadialMenuItemMorph.
	self doRadialLayout.
	
	^ aRadialMenuItemMorph