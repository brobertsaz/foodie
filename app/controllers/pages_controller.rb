class PagesController < ApplicationController
  def index
    @trucks = FoodTruck.all
    @hash = Gmaps4rails.build_markers(@trucks) do |truck, marker|
      marker.lat truck.latitude
      marker.lng truck.longitude
      marker.title truck.name
    end
  end

  def find_closest_trucks
    binding.pry
  end
end
