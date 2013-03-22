class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by_name(params[:name])

  	if user
  		session[:user_id] = user.id
  		redirect_to :root
  	else
  		redirect_to login_path 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
