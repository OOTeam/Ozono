builder
buildDiagram
	| imageStream image |
	self createHeading: 'Diagrama Objetos'.
	
	self vskip: 2 mm.
	
	imageStream := ReadWriteStream on: ByteArray new.
	PluginBasedJPEGReadWriter putForm: self lessonToPDF diagramForm onStream: imageStream.
	image := PDFJpegElement fromStream: imageStream.
	image dimension: (self scaleImage: image originalImageDimensions).
	image from: self leftMargin mm @ 0 mm.
	self addToPage: image