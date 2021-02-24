updating
update: what

	what = self getter ifTrue: [
		self updateValue].
	
	^ super update: what