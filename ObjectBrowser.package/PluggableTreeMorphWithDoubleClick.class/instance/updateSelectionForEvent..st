as yet unclassified
updateSelectionForEvent: event
	self model perform: setSelectionSelector with: (self selectedItemFrom: event)