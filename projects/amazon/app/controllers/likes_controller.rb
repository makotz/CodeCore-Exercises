class LikesController < ApplicationController
# before_action :authenticate_user!


  def create
    @like = Like.new
    @product = Product.find params[:product_id]
    @review = Review.find params[:review_id]
    @like.review = @review
    @like.user = current_user
    respond_to do |format|
      if @like.save
        format.html { redirect_to product_path(product), notice: "Review liked"}
        format.js { render :create_success }
      end
    end
  end

  def destroy
    product = Product.find params[:product_id]
    like = current_user.likes.find params[:id]
    like.destroy
    respond_to do |format|
      format.html { redirect_to product_path(product), notice: "Review unliked" }
      format.js { render :create_failure }
    end
  end

end
