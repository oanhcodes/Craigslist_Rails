class ArticlesController < ApplicationController
  include ArticlesHelper

  before_filter :authorize, :except => :show
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @category = Category.find(params[:category_id])
  end

  def create
    @article = Article.new(article_params)
    @article.category_id = params[:category_id]
    @article.user_id = current_user.id
    @article.save

    flash.notice = "Article '#{@article.title}' has been added!"
    redirect_to category_article_path(params[:category_id], @article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "Article '#{@article.title}' has been deleted!"
    redirect_to category_path(params[:category_id])
  end

  def edit
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' has been updated!"
    redirect_to category_article_path(params[:category_id], @article)
  end
end
