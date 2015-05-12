class BackboneKeijiban.Models.Board extends Backbone.RelationalModel

  relations: [{
    type: Backbone.HasMany
    key: 'comments'
    relatedModel: 'BackboneKeijiban.Models.Comment'
    collectionType: 'BackboneKeijiban.Collections.Comments'
    reverseRelation:
      key: 'board'
      includeInJSON: true
  }]

  urlRoot: '/boards'

  defaults:
    name: ''

  validate: (attrs) ->
    if attrs.name.length is 0
      'name is blank!!'

BackboneKeijiban.Models.Board.setup()
