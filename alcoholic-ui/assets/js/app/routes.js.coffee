@alcoholic.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
    .state 'beers',
      url: '',
      views:
        body:
          controller: 'BeersController'
          templateUrl: 'templates/beers/index'
    .state 'beer',
      url: '/:id',
      views:
        'body@':
          controller: 'BeerController'
          templateUrl: 'templates/beers/show'
]