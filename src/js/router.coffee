App.Router = Ember.Router.extend()

App.Router.map ->

  @route "home"

  @route "login"

  @resource "lineups",
    path: "/lineups"

  @resource "lineup", path: "/lineups/:lineup_id", ->
    @route "curators"

  @route "lineup.new", path: "/lineups/new"

  @resource "medium", path: "/media/:medium_id"

module.exports = App.Router