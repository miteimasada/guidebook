class PostsController < ApplicationController
  before_action :authenticate_user,{only: [:new,:edit,:create,:update,:destroy]}
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}


  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content],
      user_id: @current_user.id
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to('/')
    else
      render('posts/new')
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to('/')
    else
      render('posts/edit')
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to('/')
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/")
    end
  end

end
