Class {
	#name : 'TBMApplicationRootComponent',
	#superclass : 'WAComponent',
	#category : 'TinyBlog-Components',
	#package : 'TinyBlog-Components'
}

{ #category : 'class initialization' }
TBMApplicationRootComponent class >> canBeRoot [ 
	^ true
]

{ #category : 'class initialization' }
TBMApplicationRootComponent class >> initialize [ 
	" self initialize "
	| app |
	app := WAAdmin register: self asApplicationAt: 'TinyBlog'.
	app
		addLibrary: JQDeploymentLibrary ;
		addLibrary: JQUiDeploymentLibrary ;
		addLibrary: SBSDeploymentLibrary 
]

{ #category : 'rendering' }
TBMApplicationRootComponent >> renderContentOn: html [
	html text: 'TinyBlog'
]

{ #category : 'rendering' }
TBMApplicationRootComponent >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot .
	anHtmlRoot beHtml5 .
	anHtmlRoot title: 'TinyBlog'
]
