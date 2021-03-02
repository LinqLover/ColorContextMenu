event handling
mouseMove: anEvent
	"The user can drag the mouse from one button to a sibling to click the latter. This provides a radio-like UX. This and other copied from PluggableButtonMorph. See: https://github.com/hpi-swa-lab/squeak/issues/58"

	(anEvent isDraggingEvent
		and: [anEvent hand hasSubmorphs not]
		and: [(self containsPoint: anEvent position) not])
			ifFalse: [^ self].
	
	self siblingButtons
		detect: [:m | m isLocked not and: [m isEnabled] and: [m visible
				flag: #refactor "ct: Bundle this into some selector like #isAvailable?"]
			and: [m containsPoint: anEvent position]]
		ifFound: [:m |
			"Transfer mouse focus to new button. Detour through common owner and call #processMouseOver: to have enter/leave events sent correctly."
			(m hasOwner: self) ifFalse: [
				anEvent hand newMouseFocus: self owner.
				anEvent hand mouseOverHandler processMouseOver: anEvent].
			self giveMouseFocusTo: m event: anEvent].