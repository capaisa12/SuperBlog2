class PostsController < ApplicationController

  before_action :private_access, except: [:index, :show]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

def create
  @post = Post.new(post_params)
  @post.user = current_user
  if @post.save
    redirect_to posts_path, notice: "El post ha sido publicado exitosamente!"
  else
    render :new
  end
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  if @post.update(post_params)
    redirect_to posts_path, notice: "El post ha sido actualizado satisfactoriamente!"
  else
    render :edit
  end
end

def destroy
  post = Post.find(params[:id])
  post.destroy
  redirect_to posts_path, notice: "El producto ha sido eliminado de forma exitosa!"
end

private

def post_params
  params.require(:post).permit(:title, :content)
end

end
