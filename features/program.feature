Feature: The Game of Assault Feature
  In order to win the coding contest
  As a Developer
  I want to write useful tests that describe functionality

  Scenario: Cell Distance in Same Territory
    Given there is a White Blood Cell located at (-2,2)
    And   there is a Virus located at (1,3)
    When  the program checks the distance between the two Cells
    Then  the distance should be [3,1]

  Scenario: Cell Distance in Different Territory
    Given there is a White Blood Cell located at (1,-3)
    And   there is a Virus located at (2,2)
    When  the program checks the distance between the two Cells
    Then  the distance should be [1,4]
