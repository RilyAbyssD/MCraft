class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index
    @article = Article.order(created_at: :desc).all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = find_article_by_id
  end

  def new
    # 空のメソッドを作成
    @article = Article.new
  end

  def create
    # 空メソッドに、データを入れ、saveでDBに保存
    @article = Article.new(params.require(:article).permit(:title, :body, :image))
    # @article.save
    if @article.save
      redirect_to @article, notice: "作成できました"
    else
      render :new, alert: "作成できませんでした"
    end
  end

  def destroy
    @article = Article.find(params[:id]).destroy
    redirect_to @article
  end

  def update
    @article = find_article
    @article.update(params.require(:article).permit(:title, :body, :image))
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :image)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
