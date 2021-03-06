# --------------------
# MODELS
# --------------------

# Ember.Inflector.inflector.irregular('medium', 'media');

App.Character     = require "./character"
App.Comment       = require "./comment"
App.CrewMember    = require "./crew_member"
App.Curator       = require "./curator"
App.ItemTheme     = require "./item_theme"
App.Lineup        = require "./lineup"
App.LineupDayTime             = require "./lineup_day_time"
App.LineupWeatherCondition    = require "./lineup_weather_condition"
App.Medium        = require "./medium"
App.Person        = require "./person"
App.Recommendation            = require "./recommendation"
App.Selection           = require "./selection"
App.Theme               = require "./theme"
App.Trailer             = require "./trailer"
App.User                = require "./user"
App.UserMedium          = require "./user_medium"
App.UserMediumTheme     = require "./user_medium_theme"
App.WeatherCondition    = require './weather_condition'

# NOTES:
#       -> Creating Records
#       -------------------
#         var post = store.createRecord('post', { attrs... })
#         post.save().then -> (persists then acts on promise)
#
#       -> Deleting Records
#       -------------------
#         OPTION: 1
#                 post.deleteRecord()
#                 post.get('isDeleted') #=> true
#                 post.save()
#         OPTION: 2
#                 post.destroyRecord() // persists immediately
#
#
#        If you've got model data and want to add it to the store
#         (ex. bootstrapped data)
#         post = {title: "My Bootstrapped Post"}
#         this.store.push('post', post)


# ---------
# TIP: put DS.attr, hasMany and belongsTo into vars:
#      var attr = Ds.attr, belongsTo = DS.belongsTo, hasMany = DS.hasMany
#      then: first_name: attr('string')
#      then: user: belongsTo('user')