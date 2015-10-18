#encoding: utf-8
Feature: Roster Addition
  In order to add an athlete to the database
  As a coach of the Ohio Rockets 
  I should be able to run this scenario and see that the steps pass (green like a cuke)
 
Scenario: Add a new athlete to the Roster
    Given a new athlete has joined the team
    And his Rocket ID is "10"
    And his first name is "Bradley"
    And his last name is "Watson"
    And his Birth Year is "1965"
    When I press "Create Athlete"
    Then I should see the new athlete