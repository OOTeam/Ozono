create elements
createText: text withStyle: style
	| element |
	element := (PDFParagraphElement new
				styleSheet: style;
				dimension: self usableWidth mm @ 0mm;
				from: self leftMargin mm @ 0 mm;
				text: text).
	element shrinkToContent.
	self addToPage: element.
	self updateTop: (element dimension y as:#millimeters)value.