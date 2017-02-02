styles
valueStyleSheet
	| titleFont titleStyleSheet |
	titleFont := (PDFTimesFont new fontSize: 10 pt).
	titleStyleSheet := PDFStyleSheet new font: titleFont.
	titleStyleSheet alignment: PDFAlignment left middle.
	titleStyleSheet margin: (-10) mm.
	^titleStyleSheet.