module.exports = Ember.Mixin.create
  setupController: (controller, model) ->
    controller.set "model", model

    unless model.get("full") is true
      model.reload().then ->
        model.set "full", true

    return