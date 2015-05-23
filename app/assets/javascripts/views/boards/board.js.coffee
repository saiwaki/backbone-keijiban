class BackboneKeijiban.Views.BoardsBoard extends Backbone.View

  template: JST['boards/board']

  initialize: (options) ->
    @boards = options.boards
    @ac = options.ac
    @renderBoards()

  renderBoards: ->
    @$el.html @template()
    $('.tags').autocomplete({source: @ac})
    new BackboneKeijiban.Views.BoardsIndex(el: @$('[data-js=index]'), boards: @boards)
    new BackboneKeijiban.Views.BoardsNew(el: @$('[data-js=new]'), boards: @boards)



