class BackboneKeijiban.Collections.Boards extends Backbone.Collection

  model: BackboneKeijiban.Models.Board

  url: '/boards'

  search: (query) ->
    if(query == "")
      @

    pattern = new RegExp(query, "gi")
    _(@filter (data) -> pattern.test(data.get('name')))
