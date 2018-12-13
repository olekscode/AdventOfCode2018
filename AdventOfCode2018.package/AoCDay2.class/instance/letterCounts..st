as yet unclassified
letterCounts: aString
	"Returns a dictionary of letters and their counts"
	
	| dict |
	dict := Dictionary new.
	
	aString do: [ :letter |
		dict at: letter
			ifPresent: [ dict at: letter put: (dict at: letter) + 1 ]
			ifAbsent: [ dict at: letter put: 1 ] ].
		
	^ dict