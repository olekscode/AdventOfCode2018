as yet unclassified
processLineOfInput: aString
	"Extracts an array of numbers from the string.
	String '#123 @ 3,2: 5x4' becomes #(123 3 2 5 4)"
	^ aString regex: '[0-9]+' matchesCollect: [ :x | x asInteger ].