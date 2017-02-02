as yet unclassified
blockForError
	^ [ :error | 
	UIManager default inform: error messageText.
	nil ]