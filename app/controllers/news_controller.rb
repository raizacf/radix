class NewsController < ApplicationController

  def new
    @news = News.new
  end

  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params)
    if @news.save
      flash[:success] = "Notícia criada com sucesso!"
      redirect_to @news
    else
      render 'new'
    end
  end

  private

  def news_params
    params.require(:news).permit(:title, :content)
  end

end
