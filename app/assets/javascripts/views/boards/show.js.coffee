class BackboneKeijiban.Views.BoardsShow extends Backbone.View

  templateShow: JST['boards/show']
  templateEdit: JST['boards/edit']

  className: 'list-group-item'

  events:
    'click [data-js=edit]' : 'edit'
    'click [data-js=cancel]' : 'cancel'

  initialize: (options) ->
    @board = options.board

  render: ->
    @$el.html @templateShow(board: @board)
    @

  edit: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @$el.html @templateEdit(board: @board)

  cancel: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @$el.html @templateShow(board: @board)
