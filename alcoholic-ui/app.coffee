# Dependencies
express = require('express')
http = require('http')
path = require('path')
httpProxy = require('http-proxy')
assets = require('connect-assets')

app = express()
proxy = new httpProxy.RoutingProxy()

# Configuration
app.set 'port', process.env.PORT or 3001
app.set 'views', __dirname + '/views'
app.set 'view engine', 'jade'
app.set 'view options', { layout: false }

# Api server
app.set 'api host', 'localhost'
app.set 'api port', 3000

# Middlewares
app.use express.favicon()
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.methodOverride()
app.use app.router
app.use assets()

# Assets
js.root = '/javascripts'
css.root = '/stylesheets'

# Development only
app.use express.errorHandler()  if 'development' is app.get('env')

# Routing
# Single page app - index
app.get '/', (req, res) ->
  res.render 'index'

# Routes for templates
app.get /templates\/(.*)/, (req, res) ->
  res.render req.params[0]

# Proxy for API requests
app.all '/api/*', (req, res) ->
  proxy.proxyRequest req, res,
    host: app.get('api host')
    port: app.get('api port')

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port #{app.get('port')}"