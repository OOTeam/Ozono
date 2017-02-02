fileout
export
	| internalStream converter f |
	[	internalStream := (String new: 100) writeStream.
	self writeContentsOn: internalStream.
	internalStream trailer.
	converter := internalStream contents isAsciiString 
		ifTrue: [MacRomanTextConverter new] 
		ifFalse: [UTF8TextConverter new].
	fileName := 	self label asFileName, '.ws'.
	f := FileStream newFileNamed: fileName.
	f ifNil: [^ self error: 'No se puede abrir el archivo' translated ].
	(converter isMemberOf: UTF8TextConverter) ifTrue: [
		f binary.
		UTF8TextConverter writeBOMOn: f].
	f text.
	f converter: converter.
	f nextPutAll: internalStream contents.
	f close.
	] ensure: [ internalStream close ]