methods
compileUnsuspended: code inLesson: aLesson inClass: aClass notifying: anObserver withCategory:aCategory
| method |
	"NOTE: This method exists because the debuger crashed when trying to inspecting the 'method' variable when it was inside a block in compileUnsuspended:inLesson:inClass:notifying:withCategory:. May be removed once the debuger is fixed."

	"We use the direct compiler API because we want to change the class by a compilation binder object. That way we can control easily how names are binded in Ozono" 

		"Compile the method"
		method  := OpalCompiler new
			environment: aClass environment;
			class: (OBCompilationBinder onLesson: aLesson forClass: aClass);
			category: aCategory;
			source: code;
			requestor: anObserver;
			failBlock: [ ^nil ];
			compile.

		"Put the sourcecode in the changes file"	
		method putSource: (anObserver ifNil: [code] ifNotNil: #text)
				withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Behavior method'; cr].
				
		"Install the method in the class"
		aClass addSelector: method selector withMethod: method notifying: anObserver.
		
		^ method selector