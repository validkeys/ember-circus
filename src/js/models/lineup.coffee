module.exports = DS.Model.extend
  title:                      DS.attr "string"
  cached_votes_down:          DS.attr "number"
  cached_votes_score:         DS.attr "number"
  cached_votes_total:         DS.attr "number"
  cached_votes_up:            DS.attr "number"
  comments_count:             DS.attr "number"
  created_at:                 DS.attr "date"
  creation_status_percentage: DS.attr "number",
    defaultValue: 0
  curators_count:             DS.attr "number",
    defaultValue: 1
  date_featured:              DS.attr "date"
  description:                DS.attr "string"
  featured:                   DS.attr "boolean",
    defaultValue: false
  item_themes_count:          DS.attr "number",
    defaultValue: 0
  lineup_media_count:         DS.attr "number",
    defaultValue: 0
  published:                  DS.attr "boolean",
    defaultValue: false
  published_date:             DS.attr "date"
  recommendations_count:      DS.attr "number",
    defaultValue: 0
  posters:                    DS.attr()
  backdrops:                  DS.attr()
  curators:                   DS.hasMany "curator"
  selections:                 DS.hasMany "selection"
  item_themes:                DS.hasMany "item_theme"
  lineup_day_times:           DS.hasMany "lineup_day_time"
  lineup_weather_conditions:  DS.hasMany "lineup_weather_condition"
  recommendations:            DS.hasMany "recommendation", async: true
  comments:                   DS.hasMany "comment", async: true