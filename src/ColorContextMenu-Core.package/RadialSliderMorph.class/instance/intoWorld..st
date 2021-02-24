as yet unclassified
intoWorld: world

	super intoWorld: world.
	
	self valueFraction: self valueFraction.
	self flag: #hack. "Ugly workaround to trigger handleColor update from ColorChooserMorph>>#color:"