module.exports = App.BaseRoute.extend
  model: ->
    @store.find "user"