Class {
	#name : #IconMaker,
	#superclass : #Object,
	#category : #IconMaker
}

{ #category : #'instance creation' }
IconMaker >> arrowDown [

	| icon |
	icon := MooseIcons mooseImportSmalltalk.

	^ Form
		  extent: 16 @ 8
		  depth: icon depth
		  fromArray: (icon bits last: 128)
		  offset: icon offset
]

{ #category : #'instance creation' }
IconMaker >> arrowUp [

	| icon |
	icon := MooseIcons mooseExportSmalltalk.

	^ Form
		  extent: 16 @ 8
		  depth: icon depth
		  fromArray: (icon bits last: 128)
		  offset: icon offset
]

{ #category : #'instance creation' }
IconMaker >> bitsStringForIcon: anIcon [

	^ String streamContents: [ :s | 
		  anIcon bits do: [ :b | s << b asString << ' ' ] ]
]

{ #category : #'instance creation' }
IconMaker >> mergeIconsUp: upIcon down: downIcon [

	^ Form
		  extent: upIcon width @ (upIcon height + downIcon height)
		  depth: upIcon depth
		  fromArray: upIcon bits , downIcon bits
		  offset: 0 @ 0
]
