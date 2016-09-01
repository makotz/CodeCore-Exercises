require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  let(:product) { FactoryGirl.create(:product) }

  describe "#new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "instantiates a new product instance variable" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "#create" do

      context "with valid attributes" do

        def valid_request
            post :create, product: FactoryGirl.attributes_for(:product)
        end

      it "saves a record to the database" do
        count_before = Product.count
        valid_request
        count_after  = Product.count
        expect(count_after).to eq(count_before + 1)
      end

      it "redirects to the show page of the campaign" do
        valid_request
        expect(response).to redirect_to(product_path(Product.last))
      end

      it "sets a flash notice message" do
        valid_request
        expect(flash[:notice]).to be
      end
    end

    context "with invalid attributes" do
       def invalid_request
         post :create, product: {title: ""}
       end

       it "doesn't save a record to the database" do
         count_before = Product.count
         invalid_request
         count_after = Product.count
         expect(count_before).to eq(count_after)
       end

       it "renders the new template" do
         invalid_request
         expect(response).to render_template(:new)
       end

       it "sets a flash alert message" do
         invalid_request
         expect(flash[:alert]).to be
         #Expect the flash alert to go off because if there is an invalid request, the product does not save (see products_controller.rb)
       end
    end
  end

  describe "#edit" do
    before do
      get :edit, id: product.id
    end

    it "renders the edit template" do
      expect(response).to render_template(:edit)
    end

    it "sets an instance variable to the product with the passed id" do
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "#update" do
    context "with valid attributes" do
      def valid_request
        patch :update, id: product.id, product: {title: "new valid title"}
      end
      it "updates the record in the database" do
        valid_request
        expect(product.reload.title).to eq("new valid title")
      end
      it "redirects to the show page" do
        valid_request
        expect(response).to redirect_to(product_path(product))
      end
    end

    context "With invalid attributes" do
      def invalid_request
       patch :update, id: product.id, product: {title: ""}
      end
      it "doesn't save the new value to the database" do
       invalid_request
       expect(product.reload.title).to_not eq("")
      end
      it "renders the edit template" do
       invalid_request
       expect(response).to render_template(:edit)
     end
    end
  end

  describe "#show" do
    before do
      get :show, id: product.id
    end

    it "renders the show template" do
      expect(response).to render_template(:show)
    end

    it "sets an instance variable to the product with the passed id" do
      expect(assigns(:product)).to eq(product)
    end

  end


  describe "#index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "sets products instance variable to all products in the database" do
      product_1 = FactoryGirl.create(:product)
      product_2 = FactoryGirl.create(:product)
      get :index
      expect(assigns(:products)).to eq([product_1, product_2])
    end
  end

  describe "#destroy" do
    let!(:product) {
      FactoryGirl.create(:create) }

    it "removes the record from the database" do
      count_before =
    end
  end
end
