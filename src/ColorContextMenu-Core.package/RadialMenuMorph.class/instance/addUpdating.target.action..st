construction - compatibility
addUpdating: update target: target action: action
	"Compatibility with MenuMorph. The receiver does not actually support updating items at the moment."

	^ self add: (update cull: target) target: target action: action