module SessionsHelper
  
  def sign_in(user)
    #20 year salted cookie...pretzel?
    #stops cookie transfer with salt encryption
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    current_user = user
  end
  #setter
  def current_user=(user)
    @current_user = user
  end
  #getter || = or equals 
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  #is user signed in? dbl neg
  def signed_in?
    !current_user.nil?
  end
  
  #sign out method
  def sign_out
    cookies.delete(:remember_token)
    current_user = nil
  end
    
  def deny_access
    redirect_to signin_path, :notice => "Sign in to get access."
  end
  
  private
  
  def user_from_remember_token
    User.authenticate_with_salt(*remember_token)
  end
  
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
end
