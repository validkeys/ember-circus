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
  loadingMore:      false

  showPublished:    true

  # TODO:
  #      THIS DOESN'T SEEM TO BE UPDATING THE DOM
  #      WHEN NEW ITEMS ARE ADDED UNTIL YOU TOGGLE
  #      THE PUBLISHED/UNPUBLISHED LINKS
  filteredLineups:(->
    @get('model').filterProperty('published', @get("showPublished"))
  ).property('showPublished')

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

