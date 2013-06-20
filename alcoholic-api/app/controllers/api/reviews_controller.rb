class Api::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    respond_with :api, @reviews
  end

  def show
    @review = Review.find(params[:id])
    respond_with :api, @review
  end

  def create
    @review = Review.create(params[:beer])
    respond_with :api, @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update_attributes(params[:review])
    respond_with :api, @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_with :api, @review
  end
end
