@alcoholic.controller 'TopBeersCtrl', [
    '$scope', 'BeersService',
    ($scope, BeersService) ->
      $scope.beers = BeersService.query()
]