class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :item_date, only: [:show, :edit, :update]
  before_action :prevent_url, only: [:edit]

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
       redirect_to root_path
    else 
       render :new
    end
  end

  def show
    
  end

  def edit
    redirect_to root_path unless current_user.id == @item.user_id
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :status_id, :description, :category_id, :area_id, :payment_id, :shipment_id).merge(user_id: current_user.id)
  end

  def item_date
    @item = Item.find(params[:id])
  end

  def prevent_url
    @item = Item.find(params[:id])
    if @item.user_id != current_user.id || @item.order != nil
      redirect_to root_path
    end
  end


end
