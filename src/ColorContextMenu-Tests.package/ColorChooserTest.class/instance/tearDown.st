running
tearDown

	[morphsToRestore removeAllSuchThat: [:m | m show. true].
	chooser delete]
		ensure: [super tearDown].