@alcoholic.controller 'BeerDetailsCtrl', [
    '$scope', '$stateParams', 'BeersService'
    ($scope, $stateParams, BeersService) ->
      $scope.beer = BeersService.get(id: $stateParams.id)
      window.beer = $scope.beer

      $scope.saveReview = ->
        $scope.reviewPosted = true
        $scope.beer.reviews_attributes = [$scope.review]
        $scope.beer.$update(
          (beer) ->
            $scope.beer.$get()
          (response) ->
            $scope.reviewPosted = false
            alert 'failure'
            console.log response
        )
]