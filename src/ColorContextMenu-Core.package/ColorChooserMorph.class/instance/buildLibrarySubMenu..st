menus
buildLibrarySubMenu: menuFactory

	| menu |
	menu := menuFactory value.
	
	(self libraryColors take: self minimumLibrarySize) do: [:color |
		| item |
		item := menu add: color asHTMLColor action: [
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