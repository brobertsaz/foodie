class FoodTruck < ActiveRecord::Base
  validates :address, presence: :true
  validates :latitude, presence: :true
  validates :longitude, presence: :true
end
