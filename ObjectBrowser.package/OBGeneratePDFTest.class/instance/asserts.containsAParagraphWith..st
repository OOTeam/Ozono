asserts
asserts: aPDFPage containsAParagraphWith: aString 
	| paragraphElements |
	paragraphElements := aPDFPage elements select: [ :e | e isKindOf: PDFCompositeText ].
	self assert:(paragraphElements anySatisfy: [ :e | e text = aString ])