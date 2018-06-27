class VotesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.votes.create(user: current_user)

    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:post_id])
    post.votes.where(user: current_user).take.try(:destroy)

    redirect_to root_path
  end
end
