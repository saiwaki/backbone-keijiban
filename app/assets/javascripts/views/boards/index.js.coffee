class BackboneKeijiban.Views.BoardsIndex extends Backbone.View

  initialize: (options) ->
    @boards = options.boards
    @boards.each (board) =>
      @renderBoard(board)

  renderBoard: (board) ->
    view = new BackboneKeijiban.Views.BoardsShow(board: board)
    @$el.append view.render().el
