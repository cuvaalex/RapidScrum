Feature: Scrum Team

  @RAP-1 @OPEN
  Scenario: Add team member
    Given I have to add a team member
    When I set an id
    And I set a name
    And I set a role
    And I validate
    Then I receive a new team member
