menus
buildDiscreteMenu: menuFactory attribute: aSymbol levels: levels

	| menu setter |
	menu := menuFactory value.
	setter := ('set{1}:'  format: {aSymbol capitalized}) asSymbol.
	
	0 to: levels - 1 do: [:level |
		menu add: ('{1}%' format: {(level / (levels - 1) * 100) rounded}) action: [
			self perform: setter with: level / (levels - 1)]].
	
	^ menu