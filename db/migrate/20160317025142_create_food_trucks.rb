class CreateFoodTrucks < ActiveRecord::Migration
  def change
    create_table :food_trucks do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :location_description
      t.string :facility_type

      t.timestamps null: false
    end
  end
end
