class BackboneKeijiban.Views.BoardsNew extends Backbone.View

  initialize: (options) ->
    @boards = options.boards

  events:
    'submit' : 'submit'

  submit: (e) ->    
    e.stopPropagation()
    e.preventDefault()
    console.log @$('[data-js=new_name]').val()
    @$('[data-js=new_name]').val('')
