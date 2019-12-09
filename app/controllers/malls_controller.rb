class MallsController < ApplicationController
  
  def index
    @malls = Mall.all
    @malls_list = @malls.group_by(&:mall_name)
  end
  
  def show 
    @mall = Mall.find(params[:id])
  end
  
  def new
    @mall = Mall.new
  end
  
  def create
    @mall = Mall.new(mall_params)
    respond_to do |format|
     if @mall.save
       format.html { redirect_to items_path, notice: "You have registered a new mall" }
     else
       format.html { render 'new' }
     end
   end
  end
  
  def edit
    @mall = Mall.find(params[:id])
  end
  
  def update
    @mall = Mall.find(params[:id])
    respond_to do |format|
      if @mall.update_attributes(mall_params)
        flash[:success] = "You have succesfully updated the mall"
        format.html { redirect_to @mall }
      else
        format.html { :edit }
      end
    end
  end

  private
  
  def mall_params
    params.require(:mall).permit(:mall_name, :mall_address, :mall_contact, :picture)
  end

end

