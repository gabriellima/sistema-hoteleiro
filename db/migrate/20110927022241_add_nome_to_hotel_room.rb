class AddNomeToHotelRoom < ActiveRecord::Migration
  def change
    add_column :hotel_rooms, :nome, :string
  end
end
