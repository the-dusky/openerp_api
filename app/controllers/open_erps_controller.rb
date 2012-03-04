class OpenErpsController < ApplicationController
  # GET /open_erps
  # GET /open_erps.json
  def index
    @open_erps = ProductProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_erps }
    end
  end

  # GET /open_erps/1
  # GET /open_erps/1.json
  def show
    @open_erp = OpenErp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @open_erp }
    end
  end

  # GET /open_erps/new
  # GET /open_erps/new.json
  def new
    @open_erp = OpenErp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_erp }
    end
  end

  # GET /open_erps/1/edit
  def edit
    @open_erp = OpenErp.find(params[:id])
  end

  # POST /open_erps
  # POST /open_erps.json
  def create
    @open_erp = OpenErp.new(params[:open_erp])

    respond_to do |format|
      if @open_erp.save
        format.html { redirect_to @open_erp, notice: 'Open erp was successfully created.' }
        format.json { render json: @open_erp, status: :created, location: @open_erp }
      else
        format.html { render action: "new" }
        format.json { render json: @open_erp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_erps/1
  # PUT /open_erps/1.json
  def update
    @open_erp = OpenErp.find(params[:id])

    respond_to do |format|
      if @open_erp.update_attributes(params[:open_erp])
        format.html { redirect_to @open_erp, notice: 'Open erp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_erp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_erps/1
  # DELETE /open_erps/1.json
  def destroy
    @open_erp = OpenErp.find(params[:id])
    @open_erp.destroy

    respond_to do |format|
      format.html { redirect_to open_erps_url }
      format.json { head :no_content }
    end
  end
end
