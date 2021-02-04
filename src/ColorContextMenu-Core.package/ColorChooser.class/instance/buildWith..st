toolbuilder
buildWith: aBuilder

	| spec |
	spec := self buildWindowWith: aBuilder specs: {
		self frameForHeader -> [self buildHeader: aBuilder].
		self frameForContents -> [self buildChooser: aBuilder].
		self frameForFooter -> [self buildFooter: aBuilder].
	}.
	^ aBuilder build: spec