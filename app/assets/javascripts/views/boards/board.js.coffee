class BackboneKeijiban.Views.BoardsBoard extends Backbone.View

  initialize: (options) ->
    @boards = options.boards
    @renderBoards()

  renderBoards: ->
    console.log "renderBoards at view"
