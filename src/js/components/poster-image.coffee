module.exports = Ember.Component.extend
  tagName:   "img"
  attributeBindings: ["src"]
  src:( ->
    "http://images.cdn.kushapp.com/media/movies/" + @get("medium_id") + "/posters/w" + @get("width") + @get("file_path")
  ).property 'file_path', 'medium_id'