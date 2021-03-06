class BackboneKeijiban.Views.CommentsComment extends Backbone.View

  template: JST['comments/comment']

  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')
    @renderComments()

  renderComments: ->
    @$el.html @template board: @board
    new BackboneKeijiban.Views.CommentsIndex el: $('[data-js=index]'), comments: @comments
    new BackboneKeijiban.Views.CommentsNew el: $('[data-js=new]'), board: @board
