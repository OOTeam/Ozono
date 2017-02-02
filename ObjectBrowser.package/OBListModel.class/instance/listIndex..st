as yet unclassified
listIndex: anIndex

	anIndex > 0 ifTrue:[
	self selectedItem: (self listModel asOrderedCollection at: anIndex).
	self changed: #listIndex:
	].