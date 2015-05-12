window.BackboneKeijiban =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

$(document).ready ->
  boards = new BackboneKeijiban.Collections.Boards()
  boards.fetch
    success: ->
      console.log "success"
