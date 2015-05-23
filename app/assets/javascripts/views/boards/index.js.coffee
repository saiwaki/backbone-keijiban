class BackboneKeijiban.Views.BoardsIndex extends Backbone.View

  initialize: (options) ->
    @boards = options.boards
    @boards.each (board) =>
      @renderBoard(board)

    @listenTo @boards, 'add', (board) =>
      @renderBoard(board)

  events: 
    'keyup #search' :"search"

  renderBoard: (board) ->
    view = new BackboneKeijiban.Views.BoardsShow(board: board)
    @$el.append view.render().el

  search: ->
    query = $("#search").val()
    @renderList(@boards.search(query))

  renderList: (boards) ->
    $("a.list-group-item").remove()
    boards.each (board) =>
      @renderBoard(board) 
