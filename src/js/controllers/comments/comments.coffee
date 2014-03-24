module.exports = Ember.ArrayController.extend
  needs: ['lineup']

  lineupBinding: "controllers.lineup"

  init: ->
    lineup = @get('controllers.lineup').get('model').get("comments")
    lineup.reload()