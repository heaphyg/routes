class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
		if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
		end
  end

  def edit
  	@post = post.find[params[:id]]
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end
end