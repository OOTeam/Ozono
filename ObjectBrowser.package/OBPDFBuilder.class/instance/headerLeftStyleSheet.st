styles
headerLeftStyleSheet
	| styleSheet |
	styleSheet := PDFStyleSheet new font:PDFHelveticaFont new.
	styleSheet alignment: PDFAlignment left middle.
	styleSheet margin:0.
	^styleSheet.