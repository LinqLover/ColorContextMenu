menus
contextMenu

	| menu |
	menu := MenuMorph new defaultTarget: self.
	
	menu
		add: 'random' action: #setRandom;
		addLine.
	
	#((red green blue) (hue saturation lightness brightness) (cyan magenta yellow black) (alpha))
		do: [:group |
			group do: [:attrib |
				menu
					add: attrib asString
					subMenu: (self contextMenuWithLevelsForAttrib: attrib)]]
		separatedBy: [menu addLine].
	
	^ menu