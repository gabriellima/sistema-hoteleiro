Feature: Manage hotel_rooms
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Register new hotel_room
    Given I am on the new hotel_room page
    When I fill in "Price" with "10.0"
    And I uncheck "Air conditioner"
    And I uncheck "Fireplace"
    And I fill in "Number of rooms" with "2"
    And I uncheck "Balcony"
    And I press "Create"
    Then I should see "Price: 10.0"
    And I should see "Air conditioner: false"
    And I should see "Fireplace: false"
    And I should see "Number of rooms: 2"
    And I should see "Balcony: false"

  Scenario: Delete hotel_room
    Given the following hotel_rooms:
      | price   | air_conditioner | fireplace | number_of_rooms | balcony |
      | 10.0 | false           | false     | 1               | false   |
      | 20.0 | true            | true      | 2               | true    |
      | 30.0 | false           | false     | 3               | false   |
      | 40.0 | true            | true      | 4               | true    |
    When I delete the 3rd hotel_room
    Then I should see the following hotel_rooms:
      | Price   | Air conditioner | Fireplace | Number of rooms | Balcony |
      | 10.0 | false           | false     | 1               | false   |
      | 20.0 | true            | true      | 2               | true    |
      | 40.0 | true            | true      | 4               | true    |

