@alcoholic.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
    .state 'beers',
      url: '',
      views:
        body:
          controller: 'TopBeersCtrl'
          templateUrl: 'templates/beers/top'
    .state 'beer',
      url: '/beers/:id',
      views:
        'body@':
          controller: 'BeerDetailsCtrl'
          templateUrl: 'templates/beers/details'
]