class Api::V1::PropertiesController < ApplicationController
  include ErrorSerializer
  before_action :set_property, only: [:show, :update, :destroy]

  # GET /properties
  def index
    @properties = Property.all

    render json: @properties, root: "properties:", adapter: :json, status: 200
  end

  # GET /properties/1
  def show
    render json: @property
  end

  # POST /properties
  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, status: 200
    else
      render json: ErrorSerializer.serialize(@property.errors), status: 400
    end
  end

  # PATCH /properties/1
  def update
    if @property.update(property_params)
      render json: @property, status: 200
    else
      render json: ErrorSerializer.serialize(@property.errors), status: 400
    end
  end

  # DELETE /properties/1
  def destroy
    if @property.destroy
      head status: 200
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_params
      params.require(:property).permit(:type, :title, :address, :zipcode, :country, :notes)
    end
end
