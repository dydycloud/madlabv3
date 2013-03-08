class BeattapesController < ApplicationController
  # GET /beattapes
  # GET /beattapes.json
  def index
    @beattapes = Beattape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beattapes }
    end
  end

  # GET /beattapes/1
  # GET /beattapes/1.json
  def show
    @beattape = Beattape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beattape }
    end
  end

  # GET /beattapes/new
  # GET /beattapes/new.json
  def new
    @beattape = Beattape.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beattape }
    end
  end

  # GET /beattapes/1/edit
  def edit
    @beattape = Beattape.find(params[:id])
  end

  # POST /beattapes
  # POST /beattapes.json
  def create
    @beattape = Beattape.new(params[:beattape])

    respond_to do |format|
      if @beattape.save
        format.html { redirect_to @beattape, notice: 'Beattape was successfully created.' }
        format.json { render json: @beattape, status: :created, location: @beattape }
      else
        format.html { render action: "new" }
        format.json { render json: @beattape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beattapes/1
  # PUT /beattapes/1.json
  def update
    @beattape = Beattape.find(params[:id])

    respond_to do |format|
      if @beattape.update_attributes(params[:beattape])
        format.html { redirect_to @beattape, notice: 'Beattape was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beattape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beattapes/1
  # DELETE /beattapes/1.json
  def destroy
    @beattape = Beattape.find(params[:id])
    @beattape.destroy

    respond_to do |format|
      format.html { redirect_to beattapes_url }
      format.json { head :no_content }
    end
  end
end
