create elements
addBoxFor: element
	self debug
		ifTrue: [ page add: (PDFRectElement from: element from dimension: element dimension) ]