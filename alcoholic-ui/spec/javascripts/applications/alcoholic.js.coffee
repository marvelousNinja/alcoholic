describe 'Alcoholic app', ->
  beforeEach ->
    @app = angular.module('alcoholic')

  it 'should be registered', ->
    expect(@app).toBeDefined()

  describe 'Dependencies', ->
    beforeEach ->
      @dependencies = @app.requires

    it 'should have ngResource as a dependency', ->
      expect(@dependencies).toContain('ngResource')

    it 'should have ui.state as a dependency', ->
      expect(@dependencies).toContain('ui.state')