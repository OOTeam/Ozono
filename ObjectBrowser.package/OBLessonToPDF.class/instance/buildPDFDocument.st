builder
buildPDFDocument
	| pdfDoc replacer |
	pdfDoc := PDFDocument new.
	
	pdfDoc metaData title: lesson title; 
		subject: ''; 
		author: self author; 
		keywords: '';
		creator: 'Ozono - Pharo'.
	
	pdfDoc format: PDFA4Format new.

	self addPagesTo: pdfDoc.
	
	replacer := OBLabelReplacer new.
	replacer at:#pages put: pdfDoc pages size.
	replacer replaceAll:pdfDoc.
	
	^pdfDoc.