class UsersController < ApplicationController
 
  def new
    @title = "Sign Up"
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success =>"Welcome to Micasa!" }
    else 
      render 'new'
      @title = "Sign Up"
    end
  end
  
  def show
    @user = User.find(params[:id])
    #User Page proc for script bs
    @title = @user.name
  end
  
  
end
