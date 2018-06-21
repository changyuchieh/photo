class PicturesController < ApplicationController
  # respond_to :html
  
  def index
    @pictures = Picture.all
    # respond_with(@pictures)
  end

  def new
    @picture = Picture.new
    # respond_with(@picture)
  end

  def create
    @picture = Picture.new(picture_params) do |t|
      # if picture_params[:album]
      #   t.album   = picture_params[:album].read
      #   t.filename  = picture_params[:album].original_filename
      #   t.mime_type = picture_params[:album].content_type
      # end
    end
    # respond_with(@picture)
    if @picture.save
      redirect_to pictures_path, notice: "新增文章成功!"
    else
      render :new
    end
  end
  
  def show
    @picture = Picture.find_by(id: params[:id])
  end

  def edit
    @picture = Picture.find_by(id: params[:id])
    # respond_with(@picture)
  end

  def update
    @picture = Picture.find_by(id: params[:id])
    if @picture.update(picture_params)
      # 成功
      redirect_to article_index_path, notice: "資料更新成功!"
    else
      # 失敗
      render :edit
    end
      # respond_with(@picture)
  end
  
  def destroy
    @picture = Picture.find_by(id: params[:id])
    @picture.destroy if @picture
    redirect_to article_index_path, notice: "文章已刪除!"
    # respond_with(@picture)
  end
  

  private
    def picture_params
      params.require(:picture).permit(:title, :place, :content)
    end

end
