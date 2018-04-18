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
        Destination.first.posts << @post
        redirect_to destination_path(@post.destination)

        # if @post.save
        #     redirect_to root_path
        # else
        #     render :new
        # end
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to destination_path(@post.destination)
    end

end