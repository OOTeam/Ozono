create elements
createLabel: labelText withText: text labelRatio: labelRatio
	| valueRatio label value|
	valueRatio := 1 - labelRatio.
	label := PDFParagraphElement new
				styleSheet: self labelStyleSheet;
				dimension: (self usableWidth * labelRatio) mm @ 1000 mm;
				from: self leftMargin mm @ 0 mm;
				text: labelText; shrinkToContent; yourself.
				
	value := PDFParagraphElement new
				styleSheet: self valueStyleSheet;
				dimension: (self usableWidth * valueRatio) mm @ 1000 mm;
				from: (self leftMargin + (self usableWidth * labelRatio)) mm @ 0 mm;
				text: text; shrinkToContent; yourself.
	
	self
		addToPage:label.
		
	self
		addToPage:value.
				
	self updateTop: ((label dimension y as:#millimeters) value max:(value dimension y as:#millimeters) value) .