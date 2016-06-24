class PhotoGalleriesController < ApplicationController
  before_action :set_photo_gallery, only: [:show, :edit, :update, :destroy]

  # GET /photo_galleries
  # GET /photo_galleries.json
  def index
    @photo_galleries = PhotoGallery.all
  end

  # GET /photo_galleries/1
  # GET /photo_galleries/1.json
  def show
  end

  # GET /photo_galleries/new
  def new
    @photo_gallery = PhotoGallery.new
  end

  # GET /photo_galleries/1/edit
  def edit
  end

  # POST /photo_galleries
  # POST /photo_galleries.json
  def create
    @photo_gallery = PhotoGallery.new(photo_gallery_params)

    respond_to do |format|
      if @photo_gallery.save
        format.html { redirect_to @photo_gallery, notice: 'Photo gallery was successfully created.' }
        format.json { render :show, status: :created, location: @photo_gallery }
      else
        format.html { render :new }
        format.json { render json: @photo_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_galleries/1
  # PATCH/PUT /photo_galleries/1.json
  def update
    respond_to do |format|
      if @photo_gallery.update(photo_gallery_params)
        format.html { redirect_to @photo_gallery, notice: 'Photo gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_gallery }
      else
        format.html { render :edit }
        format.json { render json: @photo_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_galleries/1
  # DELETE /photo_galleries/1.json
  def destroy
    @photo_gallery.destroy
    respond_to do |format|
      format.html { redirect_to photo_galleries_url, notice: 'Photo gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_gallery
      @photo_gallery = PhotoGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_gallery_params
      params.require(:photo_gallery).permit(:snoopies, :image_name, :image_url, :image_desc)
    end
end
