exporting
export: anObject
	[ 
	internalStream := (String new: 100) writeStream.
	anObject accept: self.
	(self fileNamedAfter: anObject)
		nextPutAll: internalStream contents;
		close ]
		ensure: [ internalStream close ]