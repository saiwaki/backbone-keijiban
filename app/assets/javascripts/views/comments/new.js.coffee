class BackboneKeijiban.Views.CommentsNew extends Backbone.View

  events:
    'submit' : 'submit'

  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')

  submit: (e) ->
    e.preventDefault()
    e.stopPropagation()
    console.log 'submit'
