module.exports = App.BaseRoute.extend App.LoadMoreRouteMixin,
  model: (params) ->

    # We can pass in query params like this:
    #   ::-> this.store.find('lineup', { published: true })

    @store.find "lineup", params.lineup_id