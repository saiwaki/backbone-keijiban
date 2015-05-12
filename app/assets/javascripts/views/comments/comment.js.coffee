class BackboneKeijiban.Views.CommentsComment extends Backbone.View

  template: JST['comments/comment']

  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')
    @renderComments()

  renderComments: ->
    @$el.html @template board: @board
