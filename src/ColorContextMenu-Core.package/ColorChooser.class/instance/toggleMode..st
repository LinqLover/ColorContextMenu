modes
toggleMode: aSymbol

	mode := (mode = aSymbol
		ifTrue: [nil]
		ifFalse: [aSymbol]).
	#(isModeContinuous isModeDiscrete isModeExpanding) do: [:symbol | self changed: symbol].