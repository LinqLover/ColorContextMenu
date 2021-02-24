toolbuilder
buildChooser: aBuilder

	| chooser |
	chooser := ColorChooserMorph new
		layoutFrame: LayoutFrame fullFrame;
		when: #newColor send: #color: to: self;
		yourself.
	self addDependent: chooser.
	chooser menuMode: mode.
	
	^ aBuilder pluggablePanelSpec new
		model: chooser;
		children: #asOrderedCollection;
		yourself