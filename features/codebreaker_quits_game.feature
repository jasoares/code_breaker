Feature: code-breaker quits game

  As a code-breaker
  I want to be able to quit the game
  So that I can do other things

  Scenario: quit game
    Given I am in the middle of a game
    And the secret code is "1234"
    And I'm asked for a new guess
    When I enter the keyword 'quit'
    Then I should see "The code was 1234"
    And I should see "Thanks for playing!"