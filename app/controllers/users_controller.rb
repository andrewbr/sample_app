class UsersController < ApplicationController
 #If users are not signed in. Must limit access using before_filter
 #also look in the private methods for complete actions
 before_filter :authenticate, :only => [:edit, :update]
 before_filter :correct_user, :only => [:edit, :update]
 
  
  def index
    @users = User.all
    @title = "All users"
  end  
 
  #define action
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
  
  def edit
    @user  = User.find(params[:id])
    @title = "Edit User"
  end
  
  def update
    @user  = User.find(params[:id])
    if @user.update_attributes(params[:user])
       redirect_to @user, :flash => { :success =>"Profile updated." }
    else
      render "edit"
      @title = "Edit User"
    end
  end
  
  private
  
  #deny access in sessions_helper
  def authenticate
    deny_access unless signed_in?
  end

  def correct_user
   @user  = User.find(params[:id])
   redirect_to(root_path) unless current_user?(@user)
  end
  
end
