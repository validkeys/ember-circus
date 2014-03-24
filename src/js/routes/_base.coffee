# MIXINS
App.LoadMoreRouteMixin = require('./_mixins/load-more')

App.BaseRoute   = require('./base')
App.IndexRoute  = require('./index')

## --------------
## CURATORS
## --------------

App.CuratorsRoute = require './curators/curators'

## --------------
## LINEUPS
## --------------

App.LineupsRoute = require "./lineups/lineups"
App.LineupRoute = require "./lineups/lineup"


## --------------
## MEDIA
## --------------

App.MediumRote = require "./media/medium"


# EXAMPLE: Filtering
# -------------------
# Let's say that I wanted to have a lineups/published route
# that would only show me the published lineups
# (assuming you've created the route in your router)
# ------
# App.LineupsPublishedRoute = App.BaseRoute.extend({
#   model: function(){
#     return this.store.filter('lineup', function(lineup){
#       return lineup.get('published');
#     });
#   }
# });
# ------

# NOTE:
#      To make a GET request for all records from the server:
#       :: this.store.find('model-name') //-> network request
#      To get a list of just the records already in the store
#       :: this.store.all('model-name') //-> no network request
