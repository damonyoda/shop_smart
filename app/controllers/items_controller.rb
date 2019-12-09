class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @items = Item.all
    @item_list_comparison = @items.group_by(&:item_name)
  end
    
  def show
    @item = Item.find(params[:id])
    @items= Item.all
    @item_list_comparison = @items.group_by(&:item_name)
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to items_path, notice: "You have registered a new item" }
      else 
        format.html {render 'new'}
      end
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    respond_to do |format|
      if @item.update_attributes(item_params)
        flash[:success] = "You have succesfully updated the item"
        format.html { redirect_to @item }
      else
        format.html { :edit }
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html {redirect_to items_path, notice: "The item has been deleted"}
    end
  end
    

  private
  
  def item_params
    params.require(:item).permit(:item_name, :item_info, :mall_name, :available_in, :item_price, :picture)
  end

end
