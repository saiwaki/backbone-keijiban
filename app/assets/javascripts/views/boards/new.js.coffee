class BackboneKeijiban.Views.BoardsNew extends Backbone.View

  initialize: (options) ->
    @boards = options.boards

  events:
    'submit' : 'submit'

  submit: (e) ->    
    e.stopPropagation()
    e.preventDefault()

    board = new BackboneKeijiban.Models.Board()
    board.set
      name: @$('[data-js=new_name]').val()

    @$('[data-js=new_name]').val('')
    board.save {},
      success: =>
        @boards.add board
