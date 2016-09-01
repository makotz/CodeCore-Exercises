class ReviewsController < ApplicationController
# before_action :authenticate_user!

  def create
    @review = Review.new review_params
    @product = Product.find params[:product_id]
    @review.product = @product
    @review.user = current_user
    respond_to do |format|
      if @review.save
        format.html {redirect_to product_path(@product), notice: "Review created!"}
        format.js { render :create_success }
      else
        format.html { render "/products/show", alert: "Review not created!" }
        format.js   { render :create_failure }
      end
    end
  end

  def destroy
    @product = Product.find params[:product_id]
    @review = Review.find params[:id]
    @review.destroy
    respond_to do |format|
      format.html { redirect_to product_path(@product), notice: "Review deleted!" }
      format.js   { render }
    end
  end

private

  def review_params
    params.require(:review).permit(:body, :start_count)
  end

end
