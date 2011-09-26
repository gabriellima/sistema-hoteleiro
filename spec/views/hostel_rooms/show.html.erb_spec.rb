require 'spec_helper'

describe "hostel_rooms/show.html.erb" do
  before(:each) do
    @hostel_room = assign(:hostel_room, stub_model(HostelRoom,
      :price => 1.5,
      :air_conditioner => false,
      :fireplace => false,
      :number_of_rooms => 1,
      :balcony => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
