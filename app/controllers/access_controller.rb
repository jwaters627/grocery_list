class AccessController < ApplicationController

	layout 'test'
	
	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout, :menu, :user_new]
  
  def menu
  	#display text and links
  end

  def login
  	# login form
  end

  def attempt_login
  	if params[:username].present? && params[:password].present?
  		found_user = User.where(:user_name => params[:username]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end
  	end

  	if authorized_user
  		session[:user_id] = authorized_user.id
  		flash[:notice] = "You are now logged in!"
  		redirect_to(users_path)
	else
		flash.now[:notice] = "Incorrect username or password"
		redirect_to('login')
  	end
  end

  def logout
  	session[:user_id] = nil
  	flash[:notice] = 'Logged out'
  	redirect_to(access_login_path)
  end

  def signup
  end

end