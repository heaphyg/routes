class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

		if @post.save
      redirect_to posts_path
		end

  end

  def index
  	@posts = Post.all
  end

	def show
		@comment = Comment.new
	 	@post = Post.find(params[:id])
	end

	def edit
	 	@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to show
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end
end