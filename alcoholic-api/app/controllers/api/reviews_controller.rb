class Api::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    respond_with @beers
  end

  def show
    @review = Review.find(params[:id])
    respond_with @review
  end

  def create
    @review = Review.create(params[:beer])
    respond_with @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update_attributes(params[:review])
    respond_with @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_with @review
  end
end
