tests
find: variable in: aLesson
	^ aLesson variables detect: [ :v | v name = variable name ]