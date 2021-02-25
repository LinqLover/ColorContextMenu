accessing
value

	^ self getter ifNotNil: [:evaluable |
		evaluable cull: self target]