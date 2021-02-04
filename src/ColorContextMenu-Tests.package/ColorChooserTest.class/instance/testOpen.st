tests
testOpen
	"Smoke test"

	| widget |
	[self shouldnt: [widget := ColorChooser open] raise: Error]
		ensure: [widget ifNotNil: #delete].