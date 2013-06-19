describe 'BeersService', ->
  beforeEach(angular.mock.module('alcoholic'))

  it 'should be initialized on inject', ->
    inject (BeersService) ->
      expect(BeersService).toBeDefined()

  describe 'Data loading', ->
    beforeEach ->
      inject (BeersService, $httpBackend) =>
        @service = BeersService
        @beers = getJSONFixture('beers.json')
        @httpBackend = $httpBackend
        @httpBackend.whenGET('/api/beers').respond @beers

    it 'should load correct data', ->
      loaded_data = @service.query()
      @httpBackend.flush()
      loaded_data = JSON.stringify(loaded_data)
      expect(loaded_data).toEqual JSON.stringify(@beers)