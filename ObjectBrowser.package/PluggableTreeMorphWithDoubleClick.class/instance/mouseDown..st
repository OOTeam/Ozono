as yet unclassified
mouseDown: event
	event yellowButtonPressed
		ifTrue: [ self updateSelectionForEvent: event ].
	super mouseDown: event.
	event hand waitForClicksOrDrag: self event: event