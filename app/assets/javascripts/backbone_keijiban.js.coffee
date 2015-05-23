window.BackboneKeijiban =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

$(document).ready ->
  boards = new BackboneKeijiban.Collections.Boards()
  boards.fetch
    success: ->
      ac = []
      boards.each (board, i) ->
        ac[i] = board.get('name')
      new BackboneKeijiban.Routers.Boards($el: $('[data-js=app]'), boards: boards, ac: ac)
      Backbone.history ||= new Backbone.History({})
      Backbone.history.start()     
