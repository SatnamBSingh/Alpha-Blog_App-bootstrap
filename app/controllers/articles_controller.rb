class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to articles_path
  end
   
   def new
   	
   end
end
