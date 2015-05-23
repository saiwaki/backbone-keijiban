class BackboneKeijiban.Views.BoardsNew extends Backbone.View

  initialize: (options) ->
    @boards = options.boards

  events:
    'submit' : 'submit'

  submit: (e) ->    
    e.stopPropagation()
    e.preventDefault()
    $('#dialog').dialog()

    board = new BackboneKeijiban.Models.Board()
    @listenTo board, 'invalid', (model, error) =>
      @$('[data-js=invalid]').text error

    board.set
      name: @$('[data-js=new_name]').val()

    @$('[data-js=new_name]').val('')
    @$('[data-js=invalid]').empty()    
    board.save {},
      success: =>
        @boards.add board
