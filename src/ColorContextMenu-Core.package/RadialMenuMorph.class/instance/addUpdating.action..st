construction - compatibility
addUpdating: update action: action
	"Compatibility with MenuMorph. The receiver does not actually support updating items at the moment."

	^ self add: (update cull: self target) action: action