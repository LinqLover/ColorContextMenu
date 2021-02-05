asserting
assert: expected closeTo: actual threshold: threshold

	^ self
		assert: [(expected - actual) abs <= threshold]
		description: ['Expected {1} to be close to {2} but exceeded threshold of {3}' format: {expected. actual. threshold}]