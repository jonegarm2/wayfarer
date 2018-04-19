class PostsController < ApplicationController

    def index 
        @posts = Post.all 
    end

    def new
        @destination = Destination.find(params[:destination_id])
        @post = Post.new 
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :content))
        @post.user = current_user
        Destination.find(params[:destination_id]).posts << @post
        redirect_to destination_path(@post.destination)
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update_attributes(params.require(:post).permit(:title, :content, :image))
        redirect_to post_path(@post)
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        dest = @post.destination
        @post.destroy
        redirect_to destination_path(dest)
    end

end