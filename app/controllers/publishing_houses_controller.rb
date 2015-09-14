class PublishingHousesController < ApplicationController
  before_action :set_publishing_house, only: [:show, :edit, :update, :destroy]

  # GET /publishing_houses
  # GET /publishing_houses.json
  def index
    @publishing_houses = PublishingHouse.all
  end

  # GET /publishing_houses/1
  # GET /publishing_houses/1.json
  def show
  end

  # GET /publishing_houses/new
  def new
    @publishing_house = PublishingHouse.new
  end

  # GET /publishing_houses/1/edit
  def edit
  end

  # POST /publishing_houses
  # POST /publishing_houses.json
  def create
    @publishing_house = PublishingHouse.new(publishing_house_params)

    respond_to do |format|
      if @publishing_house.save
        format.html { redirect_to @publishing_house, notice: 'Publishing house was successfully created.' }
        format.json { render :show, status: :created, location: @publishing_house }
      else
        format.html { render :new }
        format.json { render json: @publishing_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publishing_houses/1
  # PATCH/PUT /publishing_houses/1.json
  def update
    respond_to do |format|
      if @publishing_house.update(publishing_house_params)
        format.html { redirect_to @publishing_house, notice: 'Publishing house was successfully updated.' }
        format.json { render :show, status: :ok, location: @publishing_house }
      else
        format.html { render :edit }
        format.json { render json: @publishing_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publishing_houses/1
  # DELETE /publishing_houses/1.json
  def destroy
    @publishing_house.destroy
    respond_to do |format|
      format.html { redirect_to publishing_houses_url, notice: 'Publishing house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publishing_house
      @publishing_house = PublishingHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publishing_house_params
      params.require(:publishing_house).permit(:name, :discount)
    end
end
