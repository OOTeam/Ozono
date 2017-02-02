header and footer
createFooter
	| from to |
	from := self leftMargin mm @ (self pageHeight - self bottomMargin + 2) mm.
	to := (self pageWidth - self rightMargin) mm @ (self pageHeight - self bottomMargin + 2) mm.
	page add: (PDFLineElement from: from to: to).

	page
		add:
			(PDFParagraphElement new
				text: self model teacher;
				from: self leftMargin mm @ (self pageHeight - self bottomMargin + 4) mm;
				style: self footerLeftStyleSheet;
				dimension: (self usableWidth / 3) mm @ 15 mm).

	page
		add:
			(PDFParagraphElement new
				text: self model formattedDate;
				from:  (self usableWidth / 3)  mm @ (self pageHeight - self bottomMargin + 4) mm;
				style: self footerRightStyleSheet;
				dimension:  (self usableWidth / 3)  mm @ 15 mm).

	page
		add:
			(PDFParagraphElement new
				text: self pageNumber asString , '/' , '*#pages#*';
				from: (self pageWidth - self rightMargin - 15) mm @ (self pageHeight - self bottomMargin + 4) mm;
				style: self footerRightStyleSheet;
				dimension:  (self usableWidth / 3) mm  @ 15 mm)