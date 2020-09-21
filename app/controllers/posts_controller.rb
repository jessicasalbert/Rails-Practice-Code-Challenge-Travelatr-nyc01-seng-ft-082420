class PostsController < ApplicationController

    def show 
      @post = Post.find(params[:id])
    end

    # def patch 

    # end

    def update
      @post = Post.find(params[:id])
      @post.add_like
      @post.save
      redirect_to post_path(@post)
    end
end