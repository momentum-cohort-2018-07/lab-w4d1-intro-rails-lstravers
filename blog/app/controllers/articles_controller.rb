class ArticlesController < ApplicationController

def new
end
  
def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to @article
end

article GET   
/articles/:id(.:format)
articles#show
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end

    def show
      @article = Article.find(params[:id])
    end
     
    def new
    end
     
    # snippet for brevity
end