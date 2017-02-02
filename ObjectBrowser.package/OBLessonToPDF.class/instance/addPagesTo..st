builder
addPagesTo: pdfDoc
	(OBPDFBuilder new lessonToPDF:self) buildOn:pdfDoc.