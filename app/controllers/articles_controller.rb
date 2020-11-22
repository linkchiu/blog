class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def index
		@articles = Article.all
	end

	def create
		@article = Article.new(article_parms)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])
	end

	def show
		@article = Article.find(params[:id])
	end

	private
		def article_parms
			params.require(:article).permit(:title,:text)
		end
end
