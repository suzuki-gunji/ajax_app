class PostsController < ApplicationController
  def index
    @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
    @posts = Post.all.order(id: "DESC")
  end

  
  
  def create
    Post.create(content: params[:content])  
    redirect_to action: :index
  end
end

