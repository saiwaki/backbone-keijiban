window.BackboneKeijiban =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

$(document).ready ->
  boards = new BackboneKeijiban.Collections.Boards()
  boards.fetch
    success: ->
      new BackboneKeijiban.Routers.Boards($el: $('[data-js=app]'), boards: boards)
      Backbone.history ||= new Backbone.History({})
      Backbone.history.start()
