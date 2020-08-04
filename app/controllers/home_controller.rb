class HomeController < ApplicationController

  def top
    @posts = Post.all.order(created_at: :desc)
  end

  def popular
    @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(30).pluck(:post_id))
  end

end
