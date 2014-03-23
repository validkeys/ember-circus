module.exports = Ember.Route.extend
  redirect: ->
    @transitionTo "lineups"  