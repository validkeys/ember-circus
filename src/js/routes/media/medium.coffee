module.exports = App.BaseRoute.extend
  model: (params) ->
    console.log "HERE------------------------"
    @store.find "medium", params.medium_id