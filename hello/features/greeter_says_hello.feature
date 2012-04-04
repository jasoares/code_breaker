Feature: greeter says hello
  In order to start learning RSpec and Cucumber
  As readers of The RSpec Book
  We want a greeter to say Hello

  Scenario: greeter says hello
    Given a greeter
    When I send it the greet message
    Then I should see "Hello Cucumber!"
    