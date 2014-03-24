module.exports = App.BaseRoute.extend

  setupController: (controller, model) ->
    controller.set "model", model
    meta = @get("store").metadataFor("lineup")

    controller.setProperties
      page:   meta.page
      pages:  meta.pages
      total:  meta.total


    @_super()

  model: ->

    # NOTE:
    #      To make a GET request for all records from the server:
    #       :: this.store.find('model-name') //-> network request
    #      To get a list of just the records already in the store
    #       :: this.store.all('model-name') //-> no network request

    @store.find "lineup"


  actions:
    loadMore: (page) ->
      # console.log "Load more heard in the route", page
      
      store = @get "store"
      results = store.find('lineup', { page: page }).then =>
        @get("controller").send("loadedMore", store.metadataFor("lineup"))