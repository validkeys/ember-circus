module.exports = DS.Model.extend
  first_name:                 DS.attr "string"
  last_name:                  DS.attr "string"
  email:                      DS.attr "string"
  image:                      DS.attr "string"
  curators_count:             DS.attr "number"
  rating:                     DS.attr "number"
  followers_count:            DS.attr "number"
  following_count:            DS.attr "number"
  recommendations_count:      DS.attr "number"
  token:                      DS.attr "string"
  user_media:                 DS.hasMany "user_medium"
  comments:                   DS.hasMany "comment"
  recommendations:            DS.hasMany "recommendation"
  user_medium_themes:         DS.hasMany "user_medium_theme"
  curators:                   DS.hasMany "curator"
  selections:                 DS.hasMany "selection"