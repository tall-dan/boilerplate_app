Feature: Address crud
  As a user
  I want to maintain a list of addresses

  Scenario: Entering an address
    Given I am on the home page
    When I enter a new address
    Then the address will be persisted
    And I will be shown a list of all addresses

  Scenario: Viewing all addresses
    Given there are addresses in the system
    When I am on the address index
    Then I will be shown a list of all addresses
