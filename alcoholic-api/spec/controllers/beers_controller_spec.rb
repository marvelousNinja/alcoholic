require 'spec_helper'

describe BeersController do

  let(:valid_attributes) { { "name" => "Duff" } }

  describe 'GET index' do
    it 'assigns all beers as @beers' do
      beer = Beer.create! valid_attributes
      get :index, :format => :json
      assigns(:beers).should eq([beer])
    end
  end

  describe 'GET show' do
    it 'assigns the requested beer as @beer' do
      beer = Beer.create! valid_attributes
      get :show, { :id => beer.to_param }, :format => :json
      assigns(:beer).should eq(beer)
    end
  end

  describe 'POST create' do
    describe "with valid params" do
      it 'creates a new Beer' do
        expect {
          post :create, {:beer => valid_attributes}, :format => :json
        }.to change(Beer, :count).by(1)
      end

      it 'assigns a newly created beer as @beer' do
        post :create, { :beer => valid_attributes }, :format => :json
        assigns(:beer).should be_a(Beer)
        assigns(:beer).should be_persisted
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved beer as @beer' do
        Beer.any_instance.stub(:save).and_return(false)
        post :create, { :beer => { :name => 'Not as good as Duff' }}, :format => :json
        assigns(:beer).should be_a_new(Beer)
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      it "updates the requested beer" do
        beer = Beer.create! valid_attributes
        Beer.any_instance.should_receive(:update_attributes).with({ 'name' => 'Something like Duff' })
        put :update, { :id => beer.to_param, :beer => { 'name' => 'Something like Duff'}}, :format => :json
      end

      it 'assigns the requested beer as @beer' do
        beer = Beer.create! valid_attributes
        put :update, { :id => beer.to_param, :beer => valid_attributes }, :format => :json
        assigns(:beer).should eq(beer)
      end
    end

    describe 'with invalid params' do
      it 'assigns the beer as @beer' do
        beer = Beer.create! valid_attributes
        Beer.any_instance.stub(:save).and_return(false)
        put :update, { :id => beer.to_param, :beer => { :name => 'Not as good as Duff' }}, :format => :json
        assigns(:beer).should eq(beer)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested beer' do
      beer = Beer.create! valid_attributes
      expect {
        delete :destroy, { :id => beer.to_param }, :format => :json
      }.to change(Beer, :count).by(-1)
    end
  end

end
