visitor
visitTests: lesson
	builder createSubHeading: 'Tests'.
	lesson tests do: [ :test | test accept: self ]