class AddFoodItemsToTrucks < ActiveRecord::Migration
  def change
    add_column :food_trucks, :food_items, :string
  end
end
