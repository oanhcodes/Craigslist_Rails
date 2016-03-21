module ArticlesHelper
  def article_params
    params.require(:article).permit(:title,:price,:description,:email)
  end
end
