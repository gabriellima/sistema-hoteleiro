Given /^the following hotel_rooms:$/ do |hotel_rooms|
  HotelRoom.create!(hotel_rooms.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) hotel_room$/ do |pos|
  visit hotel_rooms_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following hotel_rooms:$/ do |expected_hotel_rooms_table|
  expected_hotel_rooms_table.diff!(tableish('table tr', 'td,th'))
end

