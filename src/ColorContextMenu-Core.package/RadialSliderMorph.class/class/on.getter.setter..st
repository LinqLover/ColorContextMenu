instance creation
on: anObject getter: getter setter: setter

	^ self new
		target: anObject;
		getter: getter;
		setter: setter;
		yourself