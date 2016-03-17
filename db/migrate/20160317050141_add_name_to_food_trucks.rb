class AddNameToFoodTrucks < ActiveRecord::Migration
  def change
    add_column :food_trucks, :name, :string
  end
end
