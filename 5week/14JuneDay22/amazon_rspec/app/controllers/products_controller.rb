class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit(:title, :description, :price, :sale_price)
    @product = Product.new product_params
    if @product.save
      redirect_to product_path(@product), notice: "product created"
    else
      flash[:alert] = "product failed to generate"
      render :new
    end
  end

  def show
    @product = Product.find params[:id]
  end

  def index
    @products = Product.all
  end


  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    product_params = params.require(:product).permit(:title, :descirption, :price, :sale_price)
    if @product.update product_params
    redirect_to product_path(@product)
  else
    render :edit
  end
  end
end
