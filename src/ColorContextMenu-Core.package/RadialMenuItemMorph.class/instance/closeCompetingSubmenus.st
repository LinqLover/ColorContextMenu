submorphs-add/remove
closeCompetingSubmenus

	^ (self rootMenu ifNil: [self]) closeSubmenusBesides: self