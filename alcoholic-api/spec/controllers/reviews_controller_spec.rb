require 'spec_helper'

describe Api::ReviewsController do

  let(:valid_attributes) { { 'user_id' => 1, 'beer_id' => 1 } }

  describe 'GET index' do
    it 'assigns all reviews as @reviews' do
      review = Review.create! valid_attributes
      get :index, :format => :json
      assigns(:reviews).should eq([review])
    end
  end

  describe 'GET show' do
    it 'assigns the requested review as @review' do
      review = Review.create! valid_attributes
      get :show, { :id => review.to_param }, :format => :json
      assigns(:review).should eq(review)
    end
  end

  describe 'POST create' do
    describe "with valid params" do
      it 'creates a new review' do
        expect {
          post :create, {:review => valid_attributes}, :format => :json
        }.to change(Review, :count).by(1)
      end

      it 'assigns a newly created review as @review' do
        post :create, { :review => valid_attributes }, :format => :json
        assigns(:review).should be_a(Review)
        assigns(:review).should be_persisted
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved review as @review' do
        Review.any_instance.stub(:save).and_return(false)
        post :create, { :review => { :name => 'Not as good as Duff' }}, :format => :json
        assigns(:review).should be_a_new(Review)
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      it 'updates the requested review' do
        review = Review.create! valid_attributes
        Review.any_instance.should_receive(:update_attributes).with({ 'name' => 'Something like Duff' })
        put :update, { :id => review.to_param, :review => { 'name' => 'Something like Duff'}}, :format => :json
      end

      it 'assigns the requested beer as @beer' do
        review = Review.create! valid_attributes
        put :update, { :id => review.to_param, :review => valid_attributes }, :format => :json
        assigns(:review).should eq(review)
      end
    end

    describe 'with invalid params' do
      it 'assigns the beer as @beer' do
        review = Review.create! valid_attributes
        Review.any_instance.stub(:save).and_return(false)
        put :update, { :id => review.to_param, :beer => { :name => 'Not as good as Duff' }}, :format => :json
        assigns(:review).should eq(review)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested beer' do
      review = Review.create! valid_attributes
      expect {
        delete :destroy, { :id => review.to_param }, :format => :json
      }.to change(Review, :count).by(-1)
    end
  end

end
