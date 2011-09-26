require 'spec_helper'

describe "hotel_rooms/edit.html.erb" do
  before(:each) do
    @hotel_room = assign(:hotel_room, stub_model(HotelRoom,
      :price => 1.5,
      :air_conditioner => false,
      :fireplace => false,
      :number_of_rooms => 1,
      :balcony => false
    ))
  end

  it "renders the edit hotel_room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hotel_rooms_path(@hotel_room), :method => "post" do
      assert_select "input#hotel_room_price", :name => "hotel_room[price]"
      assert_select "input#hotel_room_air_conditioner", :name => "hotel_room[air_conditioner]"
      assert_select "input#hotel_room_fireplace", :name => "hotel_room[fireplace]"
      assert_select "input#hotel_room_number_of_rooms", :name => "hotel_room[number_of_rooms]"
      assert_select "input#hotel_room_balcony", :name => "hotel_room[balcony]"
    end
  end
end
