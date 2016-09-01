require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "#new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end
    it "sets an instance variable of User type" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "#create" do
    context "with valid parameters" do
      def valid_request
        post :create, user: attributes_for(:user)
      end
      it "creats a new user in the DB" do
        count_before = User.count
        valid_request
        count_after = User.count
        expect(count_before).to eq(count_after - 1)
      end
      it "redirects to the home page" do
        valid_request
        expect(response).to redirect_to(products_path)
      end
      it "signs in the user" do
        valid_request
        expect(session[:user_id]).to eq(User.last.id)
      end
    end
    context "with invalid parameters" do
      def invalid_request
        post :create, user: {first_name: ""}
      end
      it "doesn't cretea a user in teh database" do
        count_before = User.count
        invalid_request
        count_after = User.count
        expect(count_before).to eq(count_after)
      end
      it "renders a new template" do
        invalid_request
        expect(response).to render_template(:new)
      end
    end
  end
end
