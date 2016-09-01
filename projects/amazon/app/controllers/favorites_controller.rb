class FavoritesController < ApplicationController
  before_action :authenticate_user!


  def create
    fav = Favorite.new
    product = Product.find params[:product_id]
    fav.product = product
    fav.user = current_user
    if fav.save
      redirect_to product_path(product), notice: "Added to Favorites!"
    else
      redirect_to product_path(product), alert: "Already Favorited"
    end
  end

  def destroy
    product = Product.find params[:product_id]
    fav = current_user.favorites.find params[:id]
    fav.destroy
    redirect_to product_path(product), notice: "Favorite Removed"
  end

  def index
    @favorites = current_user.favorited_products
  end

end
