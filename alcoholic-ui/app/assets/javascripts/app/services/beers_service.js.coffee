@alcoholic.factory 'BeersService', ['$resource', ($resource) ->
  $resource '/beers/:id', { id: '@id' },
    update: { method: 'PUT' }
]