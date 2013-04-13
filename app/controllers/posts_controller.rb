class PostsController < ApplicationController
  def show
    @post = Post.find_by_url params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render action: :new
    end
  end
end
