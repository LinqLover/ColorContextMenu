running
tearDown

	[morphsToRestore removeAllSuchThat: [:m | m show. true].
	morphsToDelete removeAllSuchThat: [:m | m abandon. true].
	chooser delete]
		ensure: [super tearDown].