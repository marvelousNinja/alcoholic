class BeersController < ApplicationController
  def index
    @beers = Beer.all
    respond_with @beers
  end

  def show
    @beer = Beer.find(params[:id])
    respond_with @beer
  end

  def create
    @beer = Beer.new(params[:beer])
    respond_with @beer
  end

  def update
    @beer = Beer.find(params[:id])
    respond_with @beer
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    respond_with @beer
  end
end
