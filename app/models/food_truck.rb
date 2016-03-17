class FoodTruck < ActiveRecord::Base
  geocoded_by :address

  validates :address, presence: :true
  validates :latitude, presence: :true
  validates :longitude, presence: :true
end
