accessing
selectedItem: anItem
	selectedItem := anItem.
	selectedItem ifNotNil: [ selectedItem makeSelectionOn: self. ].