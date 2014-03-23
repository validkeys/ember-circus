module.exports = Ember.ObjectController.extend
  
  title: ''

  saving: false

  error_messages: []

  actions:
    submitForm: ->
      unless @get("title").length is 0

        @set "error_messages", []
        @set "saving", true

        console.log "User wants to create a lineup with the title: #{@get 'title'}"
        
        newLineup = @store.createRecord "lineup",
          title: @get "title" 

        newLineup.save().then =>
          @transitionTo "lineup.edit", newLineup
          @set "saving", false
        , (xhr) =>
          @set "saving", false
          @set "error_messages", xhr.responseJSON.errors

      else
        alert "you must enter a title"  