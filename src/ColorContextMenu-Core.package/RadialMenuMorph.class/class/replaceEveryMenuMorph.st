preferences
replaceEveryMenuMorph
	<preference: 'Replace every MenuMorph'
		categoryList: #(ColorContextMenu menus)
		description: 'If enabled, every MenuMorph in the system will be replaced by a RadialMenuMorph. Experimental! Save your image before enabling this!'
		type: #Boolean>

	^ ReplaceEveryMenuMorph ifNil: [false]