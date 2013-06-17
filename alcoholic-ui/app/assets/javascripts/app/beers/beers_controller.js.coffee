@alcoholic.controller 'BeersController', [
    '$scope', 'BeersService',
    ($scope, BeersService) ->
      $scope.beers = BeersService.query()
]