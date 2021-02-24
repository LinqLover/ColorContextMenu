menus
labelForAttribute: aSymbol value: value

	aSymbol = #hue ifTrue: [
		^  '{1}°' format: {(value * 360) rounded}].
	
	^  '{1}%' format: {(value * 100) rounded}