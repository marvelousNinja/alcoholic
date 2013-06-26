@alcoholic.controller 'NewReviewCtrl', [
    '$scope'
    ($scope) ->
      $scope.$on 'savingBeer', (event, beer) ->
        console.log beer
        alert 'lel'
        beer.reviews_attributes = [$scope.review]
]