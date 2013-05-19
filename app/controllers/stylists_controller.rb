class StylistsController < ApplicationController
  # GET /stylists
  # GET /stylists.json
  def index
    @stylists = Stylist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stylists }
    end
  end

  # GET /stylists/1
  # GET /stylists/1.json
  def show
    @stylist = Stylist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stylist }
    end
  end

  # GET /stylists/new
  # GET /stylists/new.json
  def new
    @stylist = Stylist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stylist }
    end
  end

  # GET /stylists/1/edit
  def edit
    @stylist = Stylist.find(params[:id])
  end

  # POST /stylists
  # POST /stylists.json
  def create
    @stylist = Stylist.new(params[:stylist])

    respond_to do |format|
      if @stylist.save
        format.html { redirect_to @stylist, notice: 'Stylist was successfully created.' }
        format.json { render json: @stylist, status: :created, location: @stylist }
      else
        format.html { render action: "new" }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stylists/1
  # PUT /stylists/1.json
  def update
    @stylist = Stylist.find(params[:id])

    respond_to do |format|
      if @stylist.update_attributes(params[:stylist])
        format.html { redirect_to @stylist, notice: 'Stylist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stylists/1
  # DELETE /stylists/1.json
  def destroy
    @stylist = Stylist.find(params[:id])
    @stylist.destroy

    respond_to do |format|
      format.html { redirect_to stylists_url }
      format.json { head :no_content }
    end
  end
end
