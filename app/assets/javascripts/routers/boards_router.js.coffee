class BackboneKeijiban.Routers.Boards extends Backbone.Router
  routes:
    '' : 'renderBoards'

  initialize: (options) ->
    @$el = options.$el
    @boards = options.boards

  renderBoards: ->
    new BackboneKeijiban.Views.BoardsBoard el: @$el, boards: @boards
