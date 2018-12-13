as yet unclassified
loadInput

	| rows file stream |
	
	file := self pathToInputFile asFileReference.
	stream := file readStream.
	
	rows := OrderedCollection new.
	
	[ stream atEnd ] whileFalse: [ 
		rows add: (self processLineOfInput: stream nextLine) ].
	
	^ self postprocessInput: rows