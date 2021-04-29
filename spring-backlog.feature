Feature: Spring Backlog

  In order to follow a sprint backlog
  As a dev team member
  I want a sprint backlog

  Background:
    Given I open the sprint backlog

  @RAP-3 @OPEN
  Scenario: Add a plan item
    Given the sprint is not started
    When I create a new item
    And I set a name
    And I set an id
    And I set an issue type
    And I set the original size
    Then the item is added to the sprint backlog
    And the item is under the plan item

  Scenario: Add a unplan item
    Given the sprint is started
    When I create a new item
    And I set a name
    And I set an id
    And I set an issue type
    And I set the original size
    Then the item is added to the sprint backlog
    And the item is under the unplan item

  Scenario: Update the daily
    Given the sprint is started
    When I set the story point spend
    Then the remaning story point is reduce of the story point set

  Scenario: Update a story point spend
    Given the sprint is started
    When I update the spend story point
    Then the remaning story point is updated of the story point set
