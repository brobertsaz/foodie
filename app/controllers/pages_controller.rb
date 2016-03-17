class PagesController < ApplicationController
  def index
    @trucks = FoodTruck.paginate(:page => params[:page], :per_page => 5)
    @hash = Gmaps4rails.build_markers(@trucks) do |truck, marker|
      marker.lat truck.latitude
      marker.lng truck.longitude
      marker.title truck.name
    end
  end

  def find_closest_trucks
    @trucks = FoodTruck.near(params[:address], 1).first(10)
  end
end
