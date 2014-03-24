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


  # SORTING
  # --
  sortProperties:   ['created_at']
  sortAscending:    false

  # WHEN LOADING MORE DATA
  loadingMore:      false

  # A CLASS TO BIND TO FOR WHETHER
  # WE ARE CURRENTLY SHOWING THE PUBLISHED
  # OR UNPUBLISHED LINEUPS
  showPublished:    true


  numPublished:(->
    @get('model').filterProperty('published', true).length
  ).property('@each.published')

  numUnpublished:(->
    @get('model').filterProperty('published', false).length
  ).property('@each.published')  


  ## TODO: Is observing @each here what I should be doing?
  ##       doing this because this wouldn't run when new models
  ##       were loaded
  filteredLineups:(->
    @get('model').filterProperty('published', @get("showPublished"))
  ).property('showPublished','@each')


  ## TODO:
  ##      This meta page data gets reset when
  ##      navigating away from this controller
  ##      but the data remains in the store. -- so need a way to
  ##      remember the last page that we loaded
  recordsAvailable:(->

    if @get('total') > 0
      if @get('page') < @get('pages')
        true
      else
        false
    else
      false

  ).property('page','pages','total')



  actions:
    loadMore: (args...) ->
      console.log "Load more heard in the controller", args
      @set "loadingMore", true
      @get("target").send("loadMore", @get("page") + 1)
      console.log @get("model").metadataemb

    loadedMore: (meta) ->
      console.log "Loaded More: ", meta
      @setProperties
        loadingMore: false
        page:   meta.page
        pages:  meta.pages
        total:  meta.total

    showPublished: ->
      @set "showPublished", true

    showUnpublished: ->
      @set "showPublished", false

