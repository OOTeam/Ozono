template
writeTests

	lesson tests do: [ :aTest | 
		self write: self lessonIdentification.
		self write: ' compileTest: '.
		aTest accept: self.
		self write: '.'.
		self cr.
		 ].