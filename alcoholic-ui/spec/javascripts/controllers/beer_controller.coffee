describe 'BeerController', ->
  beforeEach(angular.mock.module('alcoholic'))

  beforeEach ->
    inject ($rootScope, $controller, $httpBackend, BeersService) =>
      @beer = getJSONFixture('beers.json')[0]
      @id = @beer.id
      @httpBackend = $httpBackend
      @httpBackend.whenGET("/api/beers/#{@id}").respond @beer
      @scope = $rootScope.$new()
      @controller = $controller('BeerController', { $scope: @scope, $stateParams: { id: @id } } )
      @httpBackend.flush()
      @beers_service = BeersService

  it 'should be defined', ->
    expect(@controller).toBeDefined()

  it 'should assign beers variable', ->
    expect(@scope.beer).toBeDefined()

  it 'should set beers variable correctly', ->
    valid_beer = @beers_service.get { id: @id }
    @httpBackend.flush()
    expect(@scope.beer).toEqual valid_beer

