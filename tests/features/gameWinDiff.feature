Feature: Win the game by completing actions in different orders
  As a player, I want to win by performing all required actions in different orders,
  to verify that both paths lead to a win.

  Background:
    Given I start the game at "http://localhost:3000"

  Scenario Outline: Win the game by performing actions in different orders
    Given I am at "<firstLocation>"
    And I wait for "<firstAction>" message
    And I am at "<secondLocation>"
    And I wait for "<secondAction>" message
    And I am at "<finalLocation>"
    And I click the "Buy an espresso" button until I have no money left
    And I wait for "<finalMessage>" message
    And I click the "Give beer to barista" button
    Then I should have <quantity> "<finalItem>"
    And I should see the "<endButton>" button

    Examples: Winning Ways
