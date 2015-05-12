class BackboneKeijiban.Models.Board extends Backbone.Model

  urlRoot: '/boards'

  defaults:
    name: ''

  validate: (attrs) ->
    if attrs.name.length is 0
      'name is blank!!'
