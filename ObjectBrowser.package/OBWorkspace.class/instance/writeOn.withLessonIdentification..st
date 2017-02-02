fileout
writeOn: stream withLessonIdentification: lessonIdentification
	stream nextPutAll: (lessonIdentification, ' createWorkspace: ''', self label ,'''' ,' contents: ''', 
		(self stringContents copyReplaceAll: $' asString with: $' asString,$' asString ), '''.').