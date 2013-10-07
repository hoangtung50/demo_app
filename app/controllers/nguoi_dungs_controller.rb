class NguoiDungsController < ApplicationController
  # GET /nguoi_dungs
  # GET /nguoi_dungs.json
  def index
    @nguoi_dungs = NguoiDung.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nguoi_dungs }
    end
  end

  # GET /nguoi_dungs/1
  # GET /nguoi_dungs/1.json
  def show
    @nguoi_dung = NguoiDung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nguoi_dung }
    end
  end

  # GET /nguoi_dungs/new
  # GET /nguoi_dungs/new.json
  def new
    @nguoi_dung = NguoiDung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nguoi_dung }
    end
  end

  # GET /nguoi_dungs/1/edit
  def edit
    @nguoi_dung = NguoiDung.find(params[:id])
  end

  # POST /nguoi_dungs
  # POST /nguoi_dungs.json
  def create
    @nguoi_dung = NguoiDung.new(params[:nguoi_dung])

    respond_to do |format|
      if @nguoi_dung.save
        format.html { redirect_to @nguoi_dung, notice: 'Nguoi dung was successfully created.' }
        format.json { render json: @nguoi_dung, status: :created, location: @nguoi_dung }
      else
        format.html { render action: "new" }
        format.json { render json: @nguoi_dung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nguoi_dungs/1
  # PUT /nguoi_dungs/1.json
  def update
    @nguoi_dung = NguoiDung.find(params[:id])

    respond_to do |format|
      if @nguoi_dung.update_attributes(params[:nguoi_dung])
        format.html { redirect_to @nguoi_dung, notice: 'Nguoi dung was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nguoi_dung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nguoi_dungs/1
  # DELETE /nguoi_dungs/1.json
  def destroy
    @nguoi_dung = NguoiDung.find(params[:id])
    @nguoi_dung.destroy

    respond_to do |format|
      format.html { redirect_to nguoi_dungs_url }
      format.json { head :ok }
    end
  end
end
