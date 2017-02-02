header and footer
createHeader
	| from to |
	from := self leftMargin mm @ (self topMargin - 2) mm.
	to := (self pageWidth - self rightMargin) mm @ (self topMargin - 2) mm.
	page add: (PDFLineElement from: from to: to).

	page
		add:
			(PDFParagraphElement new
				text: self model author;
				from: self leftMargin mm @ (self topMargin - 12) mm;
				style: self headerLeftStyleSheet;
				dimension: (self usableWidth / 3 ) mm @ 15 mm).

	page
		add:
			(PDFParagraphElement new
				text: self model course;
				from: (self leftMargin + (self usableWidth /3) ) mm @ (self topMargin - 12) mm;
				style: self headerLeftStyleSheet;
				dimension: (self usableWidth / 3 ) mm @ 15 mm).

	page
		add:
			(PDFParagraphElement new
				text: self model lesson title;
				from: (self usableWidth /3 * 2) mm @ (self topMargin - 12) mm;
				style: self headerRightStyleSheet;
				dimension: (self usableWidth / 3 ) mm @ 15 mm).
				
	self currentTop: self topMargin.