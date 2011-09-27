class FixHostelRoomColumnName < ActiveRecord::Migration
  def change
    rename_column :hostel_rooms, :nome, :name
  end
end

