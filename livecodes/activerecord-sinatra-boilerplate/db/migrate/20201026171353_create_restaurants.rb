class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |table|
      table.string :name
      table.string :address

      table.timestamps
    end
  end
end