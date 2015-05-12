class BackboneKeijiban.Views.BoardsShow extends Backbone.View

  templateShow: JST['boards/show']

  className: 'list-group-item'

  initialize: (options) ->
    @board = options.board

  render: ->
    @$el.html @templateShow(board: @board)
    @
