styles
headingStyleSheet
	| titleFont titleStyleSheet |
	titleFont := (PDFTimesFont new fontSize: 16 pt) bold italic.
	titleStyleSheet := PDFStyleSheet new font: titleFont.
	titleStyleSheet alignment: PDFAlignment left middle.
	titleStyleSheet margin:0 mm.
	^titleStyleSheet.