# assumes Article with <title> attribute exists

class SearchesController < ApplicationController
  def show
    if params[:query].present?
      @articles = Article.where("title like ?", "%#{params[:query]}%").limit(5)
    else
      @articles = Article.all.limit(5)
    end
  end
end
