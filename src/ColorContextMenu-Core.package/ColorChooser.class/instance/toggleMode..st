modes
toggleMode: aSymbol

	mode := (mode = aSymbol
		ifTrue: [nil]
		ifFalse: [aSymbol]).
	self changed: #menuMode with: mode.
	#(isModeContinuous isModeDiscrete isModePopUp) do: [:symbol | self changed: symbol].