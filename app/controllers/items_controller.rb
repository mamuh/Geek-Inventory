class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    # @items = Item.all
    @items = Item.order('created_at DESC').page(params[:page]).per(9)
    if params[:query].present?
      @items = @items.search_by_name(params[:query])
    end
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.photo.attached?
      @item.save
      redirect_to item_path(@item)
    else
      flash[:alert] = "Please fill in all fields"
      render :new
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def filter
    @items = Item.where(category_id == params[:category_id])
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name,:price, :description, :category_id, :photo)
  end
end
