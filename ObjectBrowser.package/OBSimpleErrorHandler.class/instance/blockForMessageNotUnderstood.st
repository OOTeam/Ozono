as yet unclassified
blockForMessageNotUnderstood
	^ [ :dnu | 
	| nombreObjeto |
	nombreObjeto := dnu receiver printString.
	UIManager default inform: nombreObjeto , ' no entiende el mensaje ' , dnu message printString.
	nil ]