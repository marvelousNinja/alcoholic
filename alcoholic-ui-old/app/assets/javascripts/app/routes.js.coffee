@alcoholic.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
    .state 'beers',
      url: '',
      views:
        body:
          controller: 'BeersController'
          templateUrl: 'assets/beers/index.html.slim'
    .state 'beer',
      url: '/:id',
      views:
        'body@':
          controller: 'BeerController'
          templateUrl: 'assets/beers/show.html.slim'
]