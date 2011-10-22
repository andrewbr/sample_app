class UsersController < ApplicationController
 
  def new
    @title = "Sign Up"
  end
  
  def show
    @user = User.find(params[:id])
    #User Page proc for script bs
    @title = @user.name
  end
  
  
end
