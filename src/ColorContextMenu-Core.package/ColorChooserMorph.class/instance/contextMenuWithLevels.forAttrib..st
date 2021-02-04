menus
contextMenuWithLevels: levels forAttrib: aSymbol

	| menu setter |
	menu := MenuMorph new defaultTarget: self.
	setter := ('set{1}:'  format: {aSymbol capitalized}) asSymbol.
	
	0 to: levels - 1 do: [:level |
		menu add: ('{1}%' format: {(level / (levels - 1) * 100) rounded}) action: [
			menu defaultTarget perform: setter with: level / (levels - 1)]].
	
	^ menu