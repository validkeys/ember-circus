LineupsRoute = Ember.Route.extend
  model: ->

    # NOTE:
    #      To make a GET request for all records from the server:
    #       :: this.store.find('model-name') //-> network request
    #      To get a list of just the records already in the store
    #       :: this.store.all('model-name') //-> no network request

    @store.find "lineup"

module.exports = LineupsRoute  