actions
importLesson: aLesson
	^ OBLesson fileIn: (FileStream fileNamed: (self fileName: aLesson name asFileName)).