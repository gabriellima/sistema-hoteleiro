class AddNomeToHostelRoom < ActiveRecord::Migration
  def change
    add_column :hostel_rooms, :nome, :string
  end
end
