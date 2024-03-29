Feature: Home page
  In order to navigate
  As a user
  I want to see home page

  Scenario: Visit home page
    When I go to the home page
    Then I should see "Welcome to hotel and hostel helper page"
    And I should see "The only triple H that really HHHelps you!"
    And I should see "Go to New Search to get a room for you."

  Scenario: Do a new search
    Given I am on the home page
    When I follow "New Search"
    Then I should be on the new search page
    And I should see "New Search"

