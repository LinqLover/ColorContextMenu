construction - compatibility
setInvokingView: invokingView
	"Re-work every menu item of the form
		<target> perform: <selector>
	to the form
		<target> perform: <selector> orSendTo: <invokingView>.
	This supports MVC's vectoring of non-model messages to the editPane."
	self items do:
		[:item |
		item hasSubMenu 
			ifTrue: [ item subMenu setInvokingView: invokingView]
			ifFalse: [ item action isSymbol ifTrue:  "only the simple messages"
						[| selector |
						selector := item action.
						item action: [:target | target perform: selector orSendTo: invokingView]]]]