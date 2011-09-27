Feature: Search rooms
  In order to find rooms that meet my needs
  As a user
  I want to search rooms in a wizard form

  Scenario: Search step-by-step wizard
    Given the following hotel_rooms:
      | name    | price | air_conditioner | fireplace | number_of_rooms | balcony |
      | hotel 1 | 10.0  | false           | false     | 1               | false   |
      | hotel 2 | 10.0  | true            | true      | 2               | true    |
    And the following hostel_rooms:
      | name     | price | air_conditioner | fireplace | number_of_rooms | balcony |
      | hostel 1 | 10.0  | false           | false     | 1               | false   |
      | hostel 2 | 20.0  | true            | false     | 3               | true    |

    When I go to the new search page
    And I fill in "Price" with "10.0"
    And I press "Continue"
    And I uncheck "Air conditioner"
    And I press "Continue"
    And I uncheck "Fireplace"
    And I press "Continue"
    And I fill in "Number of rooms" with "1"
    And I press "Continue"
    And I uncheck "Balcony"
    And I press "Continue"
    Then I should see the following rooms:
      | Name     | Type       | Price | Air conditioner | Fireplace | Number of rooms | Balcony |
      | hotel 1  | HotelRoom  | 10.0  | false           | false     | 1               | false   |
      | hostel 1 | HostelRoom | 10.0  | false           | false     | 1               | false   |

    When I go to the new search page
    And I fill in "Price" with "10.0"
    And I press "Continue"
    And I check "Air conditioner"
    And I press "Continue"
    And I check "Fireplace"
    And I press "Continue"
    And I fill in "Number of rooms" with "2"
    And I press "Continue"
    And I check "Balcony"
    And I press "Continue"
    Then I should see the following rooms:
      | Name    | Type      | Price | Air conditioner | Fireplace | Number of rooms | Balcony |
      | hotel 2 | HotelRoom | 10.0  | true            | true      | 2               | true    |

    When I go to the new search page
    And I fill in "Price" with "20.0"
    And I press "Continue"
    And I check "Air conditioner"
    And I press "Continue"
    And I uncheck "Fireplace"
    And I press "Continue"
    And I fill in "Number of rooms" with "3"
    And I press "Continue"
    And I check "Balcony"
    And I press "Continue"
    Then I should see the following rooms:
      | Name     | Type       | Price | Air conditioner | Fireplace | Number of rooms | Balcony |
      | hostel 2 | HostelRoom | 20.0  | true            | false     | 3               | true    |

