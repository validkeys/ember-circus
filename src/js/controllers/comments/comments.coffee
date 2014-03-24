module.exports = Ember.ArrayController.extend
#   needs: ['lineup']
#   post: Ember.computed.alias "controllers.post"
#   lineupBinding: "controllers.lineup"
  
  init: (args...) ->
    console.dir args

  actions:
    loadMoreComments: ->
      console.log "CommentsController hear loadMoreComments"