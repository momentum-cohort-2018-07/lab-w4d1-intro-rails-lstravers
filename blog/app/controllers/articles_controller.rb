class ArticlesController < ApplicationController
    def new
    end

    def create
				@article = Article.new(params.require(:article).permit(:title, :text))
				
				#Article.new(params[:article])
       
        @article.save
        redirect_to @article
		end
		
				@article = Article.new(params.require(:article).permit(:title, :text))


    def show
      @article = Article.find(params[:id])
    end
     
    def new
    end
     
    # snippet for brevity
end