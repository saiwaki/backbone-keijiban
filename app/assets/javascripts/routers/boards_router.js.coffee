class BackboneKeijiban.Routers.Boards extends Backbone.Router
  routes:
    ':cid' : 'renderComments'
    '' : 'renderBoards'

  initialize: (options) ->
    @$el = options.$el
    @boards = options.boards

  renderBoards: ->
    new BackboneKeijiban.Views.BoardsBoard el: @$el, boards: @boards

  renderComments: (id) ->
    console.log "renderComments"
