class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cities = City.all
    respond_with(@cities)
  end

  def show
    respond_with(@city)
  end

  def new
    @city = City.new
    respond_with(@city)
  end

  def edit
  end

  def create
    @city = City.new(city_params)
    flash[:notice] = 'City was successfully created.' if @city.save
    respond_with(@city)
  end

  def update
    flash[:notice] = 'City was successfully updated.' if @city.update(city_params)
    respond_with(@city)
  end

  def destroy
    @city.destroy
    respond_with(@city)
  end

  private
    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:name, :short_name)
    end
end
