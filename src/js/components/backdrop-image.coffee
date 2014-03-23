module.exports = Ember.Component.extend
  tagName:            "img"
  attributeBindings: ["src","width"]
  width:(->
    @get "width"
  ).property 'width'
  src:( ->
    "http://images.cdn.kushapp.com/media/movies/" + @get("medium_id") + "/backdrops/w" + @get("width") + @get("file_path")
  ).property 'file_path', 'medium_id'