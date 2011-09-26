require 'spec_helper'

describe "hotel_rooms/index.html.erb" do
  before(:each) do
    assign(:hotel_rooms, [
      stub_model(HotelRoom,
        :price => 1.5,
        :air_conditioner => false,
        :fireplace => false,
        :number_of_rooms => 1,
        :balcony => false
      ),
      stub_model(HotelRoom,
        :price => 1.5,
        :air_conditioner => false,
        :fireplace => false,
        :number_of_rooms => 1,
        :balcony => false
      )
    ])
  end

  it "renders a list of hotel_rooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

