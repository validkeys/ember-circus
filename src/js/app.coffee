window.$      = require('jquery')
window.Ember  = require('ember')
window.DS     = require('ember_data')

$((() ->
  window.App = Ember.Application.create()


  ## ----------------------
  ## Adapters & Serializers
  ## ----------------------
  
  require "./adapters/_base"
  require "./serializers/_base"

  ## ----------------------
  ## Router
  ## ----------------------

  require "./router"


  ## ----------------------
  ## Routes
  ## ----------------------

  require "./routes/_base"

  ## ----------------------
  ## Controllers
  ## ----------------------

  require "./controllers/_base"


  ## ----------------------
  ## Components
  ## ----------------------

  require "./components/_base"


  ## ----------------------
  ## Models
  ## ----------------------

  require './models/_base'

))
