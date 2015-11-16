path = require 'path'
{Static} = require('./static')
staticRouter = new Static

require('zappajs') ->
	@app.use @express.static path.join __dirname,'static'	
	@get '/markdown/:name' : ->
		staticRouter.findByName @params.name, (err, content) =>
			@send content

	@get '/': 'hi zappajs'