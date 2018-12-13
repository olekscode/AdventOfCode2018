as yet unclassified
elementwiseEqualityOf: firstString and: secondString
	
	(firstString size = secondString size) ifFalse: [ 
		Error signal: 'Size mismatch' ].
	
	^ firstString asArray
		with: secondString asArray
		collect: [ :letter1 :letter2 |
			letter1 = letter2 ].