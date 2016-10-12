class PublishingHousesController < ApplicationController
  before_action :set_publishing_house, only: [:show, :update, :destroy]

  # GET /publishing_houses
  def index
    @publishing_houses = PublishingHouse.all

    render jsonapi: @publishing_houses
  end

  # GET /publishing_houses/1
  def show
    render jsonapi: @publishing_house
  end

  # POST /publishing_houses
  def create
    @publishing_house = PublishingHouse.new(publishing_house_params)

    if @publishing_house.save
      render jsonapi: @publishing_house, status: :created, location: @publishing_house
    else
      render jsonapi: @publishing_house.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /publishing_houses/1
  def update
    if @publishing_house.update(publishing_house_params)
      render jsonapi: @publishing_house
    else
      render jsonapi: @publishing_house.errors, status: :unprocessable_entity
    end
  end

  # DELETE /publishing_houses/1
  def destroy
    @publishing_house.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publishing_house
      @publishing_house = PublishingHouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def publishing_house_params
      params.require(:publishing_house).permit(:name, :discount)
    end
end
