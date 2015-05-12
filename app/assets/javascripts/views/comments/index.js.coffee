class BackboneKeijiban.Views.CommentsIndex extends Backbone.View

  initialize: (options) ->
    @comments = options.comments
    @renderComments()

    @comments.on 'add', (comment) =>
      @renderComment(comment)

  renderComments: ->
    @comments.each (comment) =>
      @renderComment(comment)

  renderComment: (comment) ->
    showView = new BackboneKeijiban.Views.CommentsShow({comment: comment})
    @$el.append showView.render().el
