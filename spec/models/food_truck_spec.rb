require 'rails_helper'

RSpec.describe FoodTruck, type: :model do
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
end
