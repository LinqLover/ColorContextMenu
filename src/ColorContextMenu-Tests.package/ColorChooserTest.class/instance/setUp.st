running
setUp

	super setUp.
	
	SystemProgressMorph uniqueInstance visible ifTrue: [
		morphsToRestore add: SystemProgressMorph uniqueInstance hide].
	
	chooser := ColorChooser open.
	self wantsToTest: chooser.