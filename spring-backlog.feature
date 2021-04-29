Feature: Spring Backlog

  In order to follow a sprint backlog
  As a dev team member
  I want a sprint backlog

  Background:
    Given I open the sprint backlog

  Scenario: Add a plan item
    Given the sprint is not started
    When I create a new item
    And I set a name
    And I set an id
    And I set an issue type
    And I set the original size
    Then the item is added to the sprint backlog
    And the item is under the plan item

  @ORPHAN
  Scenario: Add a unplan item
    Given the sprint is started
        When I create a new item
        And I set a name
        And I set an id
        And I set an issue type
        And I set the original size
        Then the item is added to the sprint backlog
        And the item is under the unplan item
