describe 'BeersController', ->
  beforeEach(angular.mock.module('alcoholic'))

  beforeEach ->
    inject ($rootScope, $controller, $httpBackend, BeersService) =>
      @beers = getJSONFixture('beers.json')
      @httpBackend = $httpBackend
      @httpBackend.whenGET('/api/beers').respond @beers
      @scope = $rootScope.$new()
      @controller = $controller('BeersController', { $scope: @scope } )
      @httpBackend.flush()
      @beers_service = BeersService

  it 'should be defined', ->
    expect(@controller).toBeDefined()

  it 'should assign beers variable', ->
    expect(@scope.beers).toBeDefined()

  it 'should set beers variable correctly', ->
    valid_beers = @beers_service.query()
    @httpBackend.flush()
    expect(@scope.beers).toEqual valid_beers

