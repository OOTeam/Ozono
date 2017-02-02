tests
runnableTests
	^ self tests select: [ :aTest | aTest selector beginsWith: 'test' ]