Given /^the following hostel_rooms:$/ do |hostel_rooms|
  HostelRoom.create!(hostel_rooms.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) hostel_room$/ do |pos|
  visit hostel_rooms_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following hostel_rooms:$/ do |expected_hostel_rooms_table|
  expected_hostel_rooms_table.diff!(tableish('table tr', 'td,th'))
end

