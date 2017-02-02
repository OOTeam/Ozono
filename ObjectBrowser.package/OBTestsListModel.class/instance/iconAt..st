as yet unclassified
iconAt: aTest
	^ (aTest name beginsWith: 'test')
		ifTrue: [ 
			IconicButton new
				target: self model;
				actionSelector: #runTest;
				labelGraphic: aTest icon;
				color: Color transparent;
				helpText: 'probar el test';
				borderWidth: 0 ]
		ifFalse: [ nil ]