module.exports = DS.RESTAdapter.reopen
  pathForType: (type) ->
    switch type
      when "medium"
        "movies"
      else
        @_super(type)