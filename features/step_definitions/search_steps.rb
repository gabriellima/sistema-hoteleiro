Then /^I should see the following rooms:$/ do |expected_rooms_table|
  expected_rooms_table.diff!(tableish('table tr', 'td,th'))
end

