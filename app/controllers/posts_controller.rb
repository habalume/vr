class PostsController < ApplicationController
	def index
	@posts = Post.all
	
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.save
		flash[:notice] = "Post successfully created"
		redirect_to post_path(@post)
	end


	def show
		@post = Post.find(params[:id])
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		flash[:notice] = "Post successfully Updated"
		redirect_to post_path(@post)
	end
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = "Post successfully deleted"
		redirect_to post_path
		
	end
	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end