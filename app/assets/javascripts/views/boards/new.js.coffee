class BackboneKeijiban.Views.BoardsNew extends Backbone.View

  initialize: (options) ->
    @boards = options.boards

  events:
    'submit' : 'submit'

  submit: (e) ->    
    console.log e
