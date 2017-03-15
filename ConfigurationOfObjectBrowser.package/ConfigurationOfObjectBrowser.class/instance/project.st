accessing
project

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) new.
		constructor project projectAttributes: (Array with: Smalltalk os platformName asSymbol).
		constructor on: self.
		project := constructor project.
		project]