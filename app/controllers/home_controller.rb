class HomeController < ApplicationController

  def top
    @posts = Post.all.order(created_at: :desc)
    @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(5).pluck(:post_id))

  end

end
