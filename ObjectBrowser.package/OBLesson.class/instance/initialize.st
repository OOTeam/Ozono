initialize-release
initialize
	
	|  loopExecutionContextClass |
	super initialize.
	objects := Set new.
	variables := OrderedCollection new.
	workspaces := OrderedCollection new.
	tests := Dictionary new.
	
	lessonEnvironment := SystemDictionary withOrganizer: SystemOrganizer new.
	loopExecutionContextClass := self createClass: #LessonExecutionContext subclassOf: OBExecutionContext.
	executionContext := loopExecutionContextClass new lesson: self; yourself.
	objectDiagram := LOOPObjectDiagramFactory buildDiagram
		lesson: self;
		yourself.
	self initializeLiterals