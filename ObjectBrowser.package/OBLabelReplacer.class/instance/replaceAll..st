replacing
replaceAll:pdfDoc.
	(self allTextElements: pdfDoc) do:[ :e | self processElement:e].