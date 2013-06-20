class Api::BeersController < ApplicationController
  def index
    @beers = Beer.all
    respond_with :api, @beers
  end

  def show
    @beer = Beer.find(params[:id])
    respond_with :api, @beer
  end

  def create
    @beer = Beer.create(params[:beer])
    respond_with :api, @beer
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update_attributes(params[:beer])
    respond_with :api, @beer
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    respond_with :api, @beer
  end
end
