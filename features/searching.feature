Feature: Searching by text

  Scenario: Results will show up on the first page if the search keyword exists on Database starting from login page
    Given I go to oxstreet login page
    And I signs in with correct credentials
    When I search for 'Neptune Blue'
    Then I see the product "KAWS x sacai x Blazer Low \'Neptune Blue\'" on the first page

  Scenario: Results will show up on the first page if the search keyword exists on Database starting from home page
    Given I go to oxstreet home page
    And I signs in with correct credentials
    When I search for 'Neptune Blue'
    Then I see the product "KAWS x sacai x Blazer Low \'Neptune Blue\'" on the first page
