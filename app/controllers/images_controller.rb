class ImagesController < ApplicationController

  def index
    @images = Image.all
    @image = Image.find_by_id(params[:id])
  end  

  def show
    @image = Image.find_by_id(params[:id])
    @images = Image.all
  end
  
  def new
    @title = "Upload an Image"
    @image = Image.new
  end
  
  def create
    @image = Image.new(params[:image])
    # respond_to do |format|
    #   if @image.save
    #     format.html { render :nothing => true}
    #     format.js { render :nothing => true}
    #   end
    # end
    if @image.save
      flash[:success] = "Successfully uploaded an image"
      redirect_to images_path and return
    else
      flash[:error] = "Error with image upload"
      redirect_to new_image_path and return
    end  
  end
  
  def destroy
    Image.find(params[:id]).destroy
    flash[:success] = "Image destroyed."
    redirect_to root_path
  end        

end


