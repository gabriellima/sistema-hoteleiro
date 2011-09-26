class CreateHotelRooms < ActiveRecord::Migration
  def change
    create_table :hotel_rooms do |t|
      t.float :price
      t.boolean :air_conditioner
      t.boolean :fireplace
      t.integer :number_of_rooms
      t.boolean :balcony

      t.timestamps
    end
  end
end
