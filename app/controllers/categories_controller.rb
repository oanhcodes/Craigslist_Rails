class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles
    @article = Article.new
    @article.category_id = @category.id
  end
end
