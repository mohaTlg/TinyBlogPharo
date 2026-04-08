Class {
	#name : 'TBMPost',
	#superclass : 'Object',
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : 'TinyBlog',
	#package : 'TinyBlog'
}

{ #category : 'as yet unclassified' }
TBMPost class >> unclassifiedTag [
	^ 'Unclassified'
]

{ #category : 'action' }
TBMPost >> beVisible [ 
	self visible: true
]

{ #category : 'accessing' }
TBMPost >> category [

	^ category
]

{ #category : 'accessing' }
TBMPost >> category: anObject [

	category := anObject
]

{ #category : 'accessing' }
TBMPost >> date [

	^ date
]

{ #category : 'accessing' }
TBMPost >> date: aDate [

	date := aDate 
]

{ #category : 'initialization' }
TBMPost >> initialize [ 
	super initialize.
	self category: TBMPost unclassifiedTag .
	self date: Date today.
	self notVisible 
]

{ #category : 'action' }
TBMPost >> notVisible [ 
	self visible: false
]

{ #category : 'accessing' }
TBMPost >> text [

	^ text
]

{ #category : 'accessing' }
TBMPost >> text: aString [

	text := aString 
]

{ #category : 'accessing' }
TBMPost >> title [

	^ title
]

{ #category : 'accessing' }
TBMPost >> title: aString [

	title := aString 
]

{ #category : 'accessing' }
TBMPost >> visible [

	^ visible
]

{ #category : 'accessing' }
TBMPost >> visible: aBoolean [

	visible := aBoolean 
]
