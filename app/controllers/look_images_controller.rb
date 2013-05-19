class LookImagesController < ApplicationController
  # GET /look_images
  # GET /look_images.json
  def index
    @look_images = LookImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @look_images }
    end
  end

  # GET /look_images/1
  # GET /look_images/1.json
  def show
    @look_image = LookImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @look_image }
    end
  end

  # GET /look_images/new
  # GET /look_images/new.json
  def new
    @look_image = LookImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @look_image }
    end
  end

  # GET /look_images/1/edit
  def edit
    @look_image = LookImage.find(params[:id])
  end

  # POST /look_images
  # POST /look_images.json
  def create
    @look_image = LookImage.new(params[:look_image])

    respond_to do |format|
      if @look_image.save
        format.html { redirect_to @look_image, notice: 'Look image was successfully created.' }
        format.json { render json: @look_image, status: :created, location: @look_image }
      else
        format.html { render action: "new" }
        format.json { render json: @look_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /look_images/1
  # PUT /look_images/1.json
  def update
    @look_image = LookImage.find(params[:id])

    respond_to do |format|
      if @look_image.update_attributes(params[:look_image])
        format.html { redirect_to @look_image, notice: 'Look image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @look_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /look_images/1
  # DELETE /look_images/1.json
  def destroy
    @look_image = LookImage.find(params[:id])
    @look_image.destroy

    respond_to do |format|
      format.html { redirect_to look_images_url }
      format.json { head :no_content }
    end
  end
end
