Class {
	#name : 'TBMBlog',
	#superclass : 'Object',
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TinyBlog',
	#package : 'TinyBlog'
}

{ #category : 'initialization' }
TBMBlog class >> current [ 
	"Answer the instance of the class"
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : 'initialization' }
TBMBlog class >> initialize [
	self reset
]

{ #category : 'initialization' }
TBMBlog class >> reset [ 
	uniqueInstance := nil
]

{ #category : 'initialization' }
TBMBlog >> initialize [ 
	super initialize .
	posts := OrderedCollection .
]

{ #category : 'action' }
TBMBlog >> removeAllPosts [
	posts := OrderedCollection new
]

{ #category : 'action' }
TBMBlog >> size [
	^ posts size
]

{ #category : 'action' }
TBMBlog >> writeBlogPost:  aPost [
	"Add the blog post to the list of posts."
	posts add: aPost
]
