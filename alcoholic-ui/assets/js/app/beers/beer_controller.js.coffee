@alcoholic.controller 'BeerController', [
    '$scope', '$stateParams', 'BeersService'
    ($scope, $stateParams, BeersService) ->
      $scope.beer = BeersService.get id: $stateParams.id
]