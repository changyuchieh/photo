class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to pictures_path, notice: "新增文章成功!"
    else
      render :new
    end
  end

  def show


  end

  def edit
    @picture
  end

  private
  def picture_params
    params.require(:picture).permit(:title, :place, :content)
  end

end
