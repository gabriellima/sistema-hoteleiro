require 'spec_helper'

describe "hostel_rooms/new.html.erb" do
  before(:each) do
    assign(:hostel_room, stub_model(HostelRoom,
      :price => 1.5,
      :air_conditioner => false,
      :fireplace => false,
      :number_of_rooms => 1,
      :balcony => false
    ).as_new_record)
  end

  it "renders new hostel_room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hostel_rooms_path, :method => "post" do
      assert_select "input#hostel_room_price", :name => "hostel_room[price]"
      assert_select "input#hostel_room_air_conditioner", :name => "hostel_room[air_conditioner]"
      assert_select "input#hostel_room_fireplace", :name => "hostel_room[fireplace]"
      assert_select "input#hostel_room_number_of_rooms", :name => "hostel_room[number_of_rooms]"
      assert_select "input#hostel_room_balcony", :name => "hostel_room[balcony]"
    end
  end
end
