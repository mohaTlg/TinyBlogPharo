Class {
	#name : 'TBMBlogTest',
	#superclass : 'TestCase',
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : 'TinyBlog-Tests',
	#package : 'TinyBlog-Tests'
}

{ #category : 'running' }
TBMBlogTest >> setUp [
	blog := TBMBlog current.
	blog removeAllPosts.
	first := TBMPost title: 'A title' text: 'A text' category: 'First Category'.
	blog writeBlogPost: first.
	post := (TBMPost title: 'Another title' text: 'Another text' category: 'Second Category') beVisible
]

{ #category : 'running' }
TBMBlogTest >> tearDown [ 
	TBMBlog reset 
]

{ #category : 'running' }
TBMBlogTest >> testAddBlogPost [
	blog writeBlogPost: post.
	self assert: blog size equals: 2
]

{ #category : 'running' }
TBMBlogTest >> testRemoveAllBlogPosts [
	blog removeAllPosts.
	self assert: blog size equals: 0
]

{ #category : 'running' }
TBMBlogTest >> testSize [
	self assert: blog size equals: 1
]
