FoodTruck.destroy_all

responses = HTTParty.get('https://data.sfgov.org/resource/rqzj-sfat.json?status=approved')

responses.each do |response|
  name = response['applicant']
  longitude = response['longitude']
  latitude = response['latitude']
  address = response['address']
  location_description = response['locationdescription']
  facility_type = response['facilitytype']
  food_items = response['fooditems']

  truck = FoodTruck.create(name: name, longitude: longitude, latitude: latitude,
                          location_description: location_description, address: address,
                          facility_type: facility_type, food_items: food_items)
  truck.save!
end