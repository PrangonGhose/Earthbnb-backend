class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.text :house_name
      t.text :address
      t.integer :rooms
      t.integer :beds
      t.text :picture
      t.decimal :price_by_night
      t.text :description

      t.timestamps
    end
  end
end
