class BackboneKeijiban.Views.BoardsBoard extends Backbone.View

  template: JST['boards/board']

  initialize: (options) ->
    @boards = options.boards
    @renderBoards()

  renderBoards: ->
    @$el.html @template()
    new BackboneKeijiban.Views.BoardsIndex(el: @$('[data-js=index]'), boards: @boards)
    new BackboneKeijiban.Views.BoardsNew(el: @$('[data-js=new]'), boards: @boards)
