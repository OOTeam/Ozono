create elements
createCodeSeparatorLine
	|y from to dotting |
	y :=  self currentTop mm + 1 mm. 
	from := self leftMargin mm @ y.
	to := (self pageWidth - self rightMargin / 2) mm @ y.
	dotting := PDFDotted new length: 1 mm; space: 1 mm.
	
	page add: ((PDFLineElement from: from to: to) 	
		dotted: dotting; 
		thickness: 0.2 mm;
		yourself).