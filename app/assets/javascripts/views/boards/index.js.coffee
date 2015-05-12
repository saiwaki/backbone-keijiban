class BackboneKeijiban.Views.BoardsIndex extends Backbone.View

  initialize: (options) ->
    @boards = options.boards
    @boards.each (board) =>
      @renderBoard(board)

  renderBoard: (board) ->
    console.log board
