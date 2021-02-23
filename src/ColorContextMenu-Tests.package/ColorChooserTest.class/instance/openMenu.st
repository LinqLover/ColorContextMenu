support
openMenu

	(self subject createWrapperFor: {
		(self subject findByPosition: self subject center)
			morphs detectMax: [:m | m ownerChain size]})
				rightClick.
	
	^ self findMenu