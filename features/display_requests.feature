Feature: Display all requests

So that I can browse the current requests
As a lender
I want to be displayed a list of all the pending requests

Scenario: There are no requests
	Given I am on the home page
	And there are no pending requests
	Then the page displays "There are currently no pending requests"
	
Scenario: There are requests
	Given I am on the home page
	And there are one or more pending requests
	Then I am displayed a list of all the current requests