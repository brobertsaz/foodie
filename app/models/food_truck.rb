class FoodTruck < ActiveRecord::Base
  geocoded_by :address

  validates :address, presence: :true
  validates :name, presence: :true
end
