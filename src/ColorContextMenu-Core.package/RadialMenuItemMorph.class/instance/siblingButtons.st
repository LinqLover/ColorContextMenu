private
siblingButtons
	"Make a list of buttons (including the receiver) for mouseMove feedback. This allows a simple radio-button effect among the button submorphs of a given morph."

	^ allButtons ifNil: [allButtons :=
		self owner submorphsSatisfying: [:m |
			m species = self species and: [m isLocked not]]]