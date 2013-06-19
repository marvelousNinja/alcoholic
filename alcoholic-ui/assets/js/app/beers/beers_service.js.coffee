@alcoholic.factory 'BeersService', ['$resource', ($resource) ->
  $resource '/api/beers/:id', { id: '@id' },
    update: { method: 'PUT' }
]