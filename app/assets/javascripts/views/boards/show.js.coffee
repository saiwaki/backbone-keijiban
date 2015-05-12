class BackboneKeijiban.Views.BoardsShow extends Backbone.View

  templateShow: JST['boards/show']
  templateEdit: JST['boards/edit']

  className: 'list-group-item'
  tagName: 'a'

  events:
    'click [data-js=edit]' : 'edit'
    'click [data-js=cancel]' : 'cancel'
    'click [data-js=done]' : 'done'
    'click [data-js=destroy]' : 'destroy'
    'click [data-js=edit_name]' : 'prevent'

  initialize: (options) ->
    @board = options.board

  render: ->
    @$el.html @templateShow(board: @board)
    @$el.attr 'href', '#' + @board.cid
    @

  edit: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @$el.html @templateEdit(board: @board)

  cancel: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @$el.html @templateShow(board: @board)

  done: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @board.set name: @$('[data-js=edit_name]').val()
    @$('[data-js=invalid]').val('')
    @board.save {},
      success: =>
        @$el.html @templateShow(board: @board)

  destroy: (e) ->
    e.preventDefault()
    e.stopPropagation()
    if window.confirm 'Can I delete it?'
      @remove()
      @board.destroy()

  prevent: (e) ->
    e.preventDefault()
    e.stopPropagation()
