Feature: Give Beer
  As a player
  I should be able to trade beer

  @giveBeer
  Scenario: Player gives beer
    Given that I am at the localhost
    When I run through the game and get a beer
    Then I should give it to the barista and I should revieve 2 free espressos from him