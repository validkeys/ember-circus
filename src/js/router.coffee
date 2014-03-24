App.Router = Ember.Router.extend()

App.Router.map ->

  @route "home"

  @route "login"

  @resource "curators", path: "/curators"

  @resource "lineups",
    path: "/lineups"

  @resource "lineup", path: "/lineups/:lineup_id", ->
    @route "curators"
    @resource "comments", path: "/comments"

  @route "lineup.new",  path: "/lineups/new"
  @route "lineup.edit", path: "/lineups/:lineup_id/edit"

  @resource "medium", path: "/media/:medium_id"

module.exports = App.Router