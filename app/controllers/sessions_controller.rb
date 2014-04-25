class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.where(params[:user]).first
	  if @user && @user.authenticate(params[:password])
	    session[:student_id] = @student.id
	    redirect posts_path
	  else
	    redirect new_post_path
	  end
  end

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end
end
