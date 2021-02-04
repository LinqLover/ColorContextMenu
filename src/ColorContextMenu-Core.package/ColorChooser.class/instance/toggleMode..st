modes
toggleMode: aSymbol

	mode := (mode = aSymbol
		ifTrue: [nil]
		ifFalse: [aSymbol]).
	#(isModeContinuous isModeDiscrete isModePopUp) do: [:symbol | self changed: symbol].