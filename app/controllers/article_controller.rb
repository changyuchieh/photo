class ArticleController < ApplicationController
  def index
    @pictures = Picture.all
  end

end
