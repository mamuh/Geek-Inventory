class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def edit
  end

  def update
    item.update(items_params)
    redirect_to item_path(item)
  end

  def destroy
    item.destroy
    redirect_to items_path
  end

  def filter
    @items = Item.where(category_id == params[:category_id])
  end

  private

  def set_item
    item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name,:price, :description, :category_id)
  end
end
