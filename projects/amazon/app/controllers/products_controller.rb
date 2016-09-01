class ProductsController < ApplicationController

before_action :authenticate_user!, except: [:show, :index]


def new
  @product = Product.new
end

def create
  product_params = params.require(:product).permit(:title, :description, :price)
  @product = Product.new product_params
  if @product.save
    redirect_to product_path(@product)
  else
    render :new
  end
end

def show
  @product = Product.find params[:id]
  @review = Review.new
  respond_to do |format|
    format.html
    format.json { render json: {product: @product, reviews: @product.reviews} }
  end
  
end

def index
  @products = Product.all
  respond_to do |format|
  format.html
  format.json { render json: @products}
  end
end

def edit
  @product = Product.find params[:id]
end

def update
  product_params = params.require(:product).permit(:title, :description, :price)
  @product = Product.new product_params
  if @product.update product_params
    redirect_to product_path(@product)
  else
    render :edit
  end
end

def destroy
  @product = Product.find params[:id]
  @product.destroy
  redirect_to products_path
end

private

def authenticate_user!
  redirect_to new_session_path, alert: "please sign in" unless user_signed_in?
end

end
