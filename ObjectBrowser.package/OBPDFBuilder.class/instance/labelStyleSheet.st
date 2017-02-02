styles
labelStyleSheet
	| titleFont titleStyleSheet |
	titleFont := (PDFTimesFont new fontSize: 9 pt) bold.
	titleStyleSheet := PDFStyleSheet new font: titleFont.
	titleStyleSheet alignment: PDFAlignment left middle.
	titleStyleSheet margin: 0 mm.
	^titleStyleSheet.