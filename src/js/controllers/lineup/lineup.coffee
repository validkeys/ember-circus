module.exports = Ember.ObjectController.extend

  comments_page: 1

  actions:
    loadMoreComments: ->
      console.log "Controller heard load more comments"
      # @get("target").send("loadMoreComments", 1)
      model = @get("model")
      @incrementProperty "comments_page"
      model.loadMoreComments({page: @get("comments_page")}).then =>
        console.log "Loading #{@get('comments_page')} of comments"