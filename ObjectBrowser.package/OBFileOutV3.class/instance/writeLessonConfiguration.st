template
writeLessonConfiguration

	lesson variables do: [ :variable | variable accept: self ].
	lesson objects do: [ :object | 
			self write: self lessonIdentification.
			self write: ' addObject: '.
			self write: object posibleName.
			self write: '.'.
			self cr. ].
	self write: '^ '.
	self write: self lessonIdentification.
	self write: '.'.