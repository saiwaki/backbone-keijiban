class BackboneKeijiban.Views.CommentsIndex extends Backbone.View

  initialize: (options) ->
    @comments = options.comments
    @renderComments()

  renderComments: ->
    @comments.each (comment) =>
      @renderComment(comment)

  renderComment: (comment) ->
    showView = new BackboneKeijiban.Views.CommentsShow({comment: comment})
