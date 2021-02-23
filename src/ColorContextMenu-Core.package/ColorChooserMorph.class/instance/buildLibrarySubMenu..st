menus
buildLibrarySubMenu: menuFactory

	| menu |
	menu := menuFactory value.
	
	(self libraryColors take: self minimumLibrarySize) do: [:color |
		| label item |
		label := color asHTMLColor.
		(menu isKindOf: RadialMenuMorph) ifTrue: [
			label := label asText
				addAttribute: TextFontChange font1;
				flag: #hack; "should be better resized in RadialMenuMorph"
				yourself].
		item := menu add: label action: [
			self color: color].
		self colorizeMenuItem: item color: color asNontranslucentColor].
	self libraryColors ifNotEmpty: [:colors |
		colors size > self minimumLibrarySize ifTrue: [
			menu add: 'browse...' action: [
				self chooseLibraryColor]].
		menu addLine].
	
	menu add: 'save' action: [
		self saveLibraryColor: self color].
	
	^ menu