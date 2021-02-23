support
chooseMode: label

	| button |
	button := self subject findByLabel: label.
	
	button getModelState
		ifFalse: [button click].
	
	self assert: button getModelState description: ['Cannot choose mode {1}' format: {label}].