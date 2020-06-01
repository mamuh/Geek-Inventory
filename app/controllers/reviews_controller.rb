class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @item = Item.find(params[:item_id])
    review = Review.new(review_params)
    review.item = @item
    review.user = current_user.id
    if @review.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def destroy
    review = Review.find(params[:id])
    item = review.item
    review.destroy
    redirect_to item_path(item)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
