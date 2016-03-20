class FoodTrucksController < ApplicationController

  def index
    @trucks = FoodTruck.paginate(:page => params[:page], :per_page => 5)
    @hash = Gmaps4rails.build_markers(@trucks) do |truck, marker|
      marker.lat truck.latitude
      marker.lng truck.longitude
      marker.title truck.name
    end
  end

  def find_closest_trucks
    @address_result = Geocoder.coordinates params[:address]
    @location = {:lat => @address_result[0], :lng => @address_result[1], :marker_title => "Your Location", picture: {
        url: "https://lh4.ggpht.com/Tr5sntMif9qOPrKV_UVl7K8A_V3xQDgA7Sw_qweLUFlg76d_vGFA7q1xIKZ6IcmeGqg=w44",
        width:  44,
        height: 44
      }
    }
    @trucks = FoodTruck.near(params[:address], 1).paginate(:page => params[:page], :per_page => 5)
    @hash = Gmaps4rails.build_markers(@trucks) do |truck, marker|
      marker.lat truck.latitude
      marker.lng truck.longitude
      marker.title truck.name
    end

    respond_to do |format|
      format.js
    end
  end

  def show_location
    @truck = FoodTruck.find params[:truck]
    @hash = Gmaps4rails.build_markers(@truck) do |truck, marker|
      marker.lat truck.latitude
      marker.lng truck.longitude
      marker.title truck.name
    end
    respond_to do |format|
      format.js
    end
  end
end
