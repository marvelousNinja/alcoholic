@alcoholic.controller 'NewReviewCtrl', [
    '$scope'
    ($scope) ->
      $scope.$on 'savingBeer', (event, beer) ->
        beer.reviews_attributes = [$scope.review]
]