module.exports = Ember.Route.extend
  actions:
    error: (reason, transition) ->
      if reason.status == 401
        @transitionTo "login"
      else
        console.error "Something went wrong", reason  