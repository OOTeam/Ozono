styles
headerRightStyleSheet
	| styleSheet |
	styleSheet := PDFStyleSheet new font:PDFHelveticaFont new.
	styleSheet alignment: PDFAlignment right middle.
	styleSheet margin:0.
	^styleSheet.