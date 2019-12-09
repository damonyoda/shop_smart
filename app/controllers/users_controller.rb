class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
  end
  
  def current_user?(user)
    user == current_user
  end
    
end
