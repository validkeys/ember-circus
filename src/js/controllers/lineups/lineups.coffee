module.exports = Ember.ArrayController.extend

  # NOTE:
  #      if i depended on another controller
  # --------------------------
  # needs: ['comment'] //ie. the CommentController
  # --------------------------
  #      I could then alias it to a computed property
  # --------------------------
  # comment: Ember.computed.alias('controllers.post')
  # --------------------------


  sortProperties:   ['created_at']
  sortAscending:    false