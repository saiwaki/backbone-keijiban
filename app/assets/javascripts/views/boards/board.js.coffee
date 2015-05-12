class BackboneKeijiban.Views.BoardsBoard extends Backbone.View

  template: JST['boards/board']

  initialize: (options) ->
    @boards = options.boards
    @renderBoards()

  renderBoards: ->
    @$el.html @template()
