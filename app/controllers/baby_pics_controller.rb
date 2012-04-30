class BabyPicsController < ApplicationController
  # GET /baby_pics
  # GET /baby_pics.json
  def index
    @baby_pics = BabyPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baby_pics }
    end
  end

  # GET /baby_pics/1
  # GET /baby_pics/1.json
  def show
    @baby_pic = BabyPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baby_pic }
    end
  end

  # GET /baby_pics/new
  # GET /baby_pics/new.json
  def new
    @baby_pic = BabyPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baby_pic }
    end
  end

  # GET /baby_pics/1/edit
  def edit
    @baby_pic = BabyPic.find(params[:id])
  end

  # POST /baby_pics
  # POST /baby_pics.json
  def create
    @baby_pic = BabyPic.new(params[:baby_pic])

    respond_to do |format|
      if @baby_pic.save
        format.html { redirect_to @baby_pic, notice: 'Baby pic was successfully created.' }
        format.json { render json: @baby_pic, status: :created, location: @baby_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @baby_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baby_pics/1
  # PUT /baby_pics/1.json
  def update
    @baby_pic = BabyPic.find(params[:id])

    respond_to do |format|
      if @baby_pic.update_attributes(params[:baby_pic])
        format.html { redirect_to @baby_pic, notice: 'Baby pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baby_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baby_pics/1
  # DELETE /baby_pics/1.json
  def destroy
    @baby_pic = BabyPic.find(params[:id])
    @baby_pic.destroy

    respond_to do |format|
      format.html { redirect_to baby_pics_url }
      format.json { head :no_content }
    end
  end
end
