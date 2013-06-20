@alcoholic.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
    .state 'index',
      url: ''
      views:
        body:
          controller: 'TopBeersCtrl'
          templateUrl: 'templates/beers/top'
    .state 'new_beer',
      url: '/beers/new'
      views:
        'body@':
          controller: 'NewBeerCtrl'
          templateUrl: 'templates/beers/new'
    .state 'beer_details',
      url: '/beers/:id'
      views:
        'body@':
          controller: 'BeerDetailsCtrl'
          templateUrl: 'templates/beers/details'
]