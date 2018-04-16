class PostsController < ApplicationController

    def index 
        @posts = Post.all 
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :content))

        if @post.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def upvote
        @post = Post.find(params[:id])
        @post.upvotes += 1
        @post.save
        redirect_to post_path(@post)
    end

    def downvote
        @post = Post.find(params[:id])
        @post.downvotes -= 1
        @post.save
        redirect_to post_path(@post)
    end
    
end