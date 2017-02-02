actions
generate
	| aStream |
	aStream := FileStream fileNamed: self fullpath.
	self buildPDFDocument exportTo: aStream.
	aStream truncate:aStream size.
	aStream close.
