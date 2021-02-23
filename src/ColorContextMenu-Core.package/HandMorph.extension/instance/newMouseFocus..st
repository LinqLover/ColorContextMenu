*ColorContextMenu-Core-focus handling-override
newMouseFocus: aMorphOrNil
	"Make the given morph the new mouse focus, canceling the previous mouse focus if any. If the argument is nil, the current mouse focus is cancelled."

	| newFocus oldFocus |
	oldFocus := self mouseFocus.
	newFocus := aMorphOrNil.
	
	self mouseFocus: newFocus.
	
	oldFocus == newFocus ifFalse: [
		oldFocus ifNotNil: [:m | m mouseFocusChange: false].
		newFocus ifNotNil: [:m | m mouseFocusChange: true]].