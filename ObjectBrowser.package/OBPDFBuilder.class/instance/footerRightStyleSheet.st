styles
footerRightStyleSheet
	| styleSheet |
	styleSheet := PDFStyleSheet new font:PDFHelveticaFont new.
	styleSheet alignment: PDFAlignment right middle.
	styleSheet filled:true.
	styleSheet fillColor: (PDFColor formatRGB:Color orange).
	styleSheet margin:0.	
	^styleSheet.