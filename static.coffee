#markdown = require("markdown").markdown
markdown = require("marked")
fs = require 'fs'

class Static
	constructor: ->

	findByName : (name, func) ->
		fileName = __dirname + "/mds/#{name}.md"
		if !(fs.existsSync fileName) 
			func 1, 'file not exists'
		else
			content = fs.readFileSync fileName,'utf8'
			#content = markdown.toHTML content
			content = markdown(content)
			#head = '<head><link href="http://kevinburke.bitbucket.org/markdowncss/markdown.css" rel="stylesheet"></link></head>'
			
			head = '<head><link href="/markdown6.css"rel="stylesheet"></link></head>'

			#head = '<head><link href="http://mahua.jser.me/mahua.css?v=3" rel="stylesheet"></link></head>'
			content = head + content
			func 0, content




exports.Static = Static