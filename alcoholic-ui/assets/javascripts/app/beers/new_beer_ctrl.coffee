@alcoholic.controller 'NewBeerCtrl', [
    '$scope', '$state', 'BeersService'
    ($scope, $state, BeersService) ->

      $scope.save = ->
        $scope.$broadcast('savingBeer', $scope.beer)

        BeersService.save $scope.beer,
          (beer) ->
            $state.transitionTo('beer_details', id: beer.id)
          (response) ->
            alert 'failure'
            console.log response
]