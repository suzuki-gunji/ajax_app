class PostsController < ApplicationController
  def index
    @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
    @posts = Post.all  # 1番目のレコードを@postに代入
  end

  def new
  end
  
  def create
    Post.create(content: params[:content])  
  end
end

