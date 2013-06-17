@alcoholic.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
    .state 'beers',
      url: '',
      views:
        body:
          controller: 'BeersController'
          templateUrl: 'assets/beers/index.html.slim'
]