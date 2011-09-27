class FixHotelRoomColumnName < ActiveRecord::Migration
  def change
    rename_column :hotel_rooms, :nome, :name
  end
end

