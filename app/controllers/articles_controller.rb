class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end


    def edit
        @article = Article.find(params[:id])
    end
    def show
        @article = Article.find(params[:id])


    end

    def update
        @article = Article.find(params[:id])    
        @article.update(title:params[:article][:title],status: params[:article][:status])
        redirect_to @article
    end

    def new
        @article = Article.new
        @article.title = "Demo"
        @article.status= 1
    end

    def create
        puts "Prueba"
        @article = Article.create(title:params[:article][:title],status: params[:article][:status])
        render json: @article
    end

    def destroy
        puts "Aca estamos ctm"
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to "/articles"

    end
    
end
