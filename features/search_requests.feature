Feature: Search Requests

  So that users can search requests
  As a user
  I can submit a search
  And be returned a page of relevant items
  
  Scenario: I submit a valid search and there are results
  	Given I am on the home page
    And there are one or more pending requests
  	When I fill in "search" with "Bicycle"
    And I click the "Search" button
  	Then a flash message displays "Matching requests"
  	And there is at least one result

  Scenario: I submit a valid search and there are no results
  	Given I am on the home page
    And there are one or more pending requests
  	When I fill in "search" with "ASFJOIJDSGPO"
    And I click the "Search" button
  	Then a flash message displays "No matching requests found"
  	And there are no results