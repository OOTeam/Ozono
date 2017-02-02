utils
allTextElements: pdfDoc
	^ pdfDoc pages
		flatCollect: [ :page | page elements select: [ :e | (e class canPerform: #text) and: [ e class canPerform: #text: ] ] ]