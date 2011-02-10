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

  Scenario: Describe Cell
    Given there is a White Blood Cell located at (2,-1)
    And   the White Blood Cell is alive
    When  the program describes the White Blood Cell
    Then  the user should see "Assault::WhiteBloodCell - 2.-1 - true - friendly"

  Scenario: Describe Battlefield
    Given the Battlefield is empty
    When  the program describes the Battlefield
    Then  the Battlefield should have the following attributes
      |params      |values |
      |columns     |4      |
      |rows        |6      |
      |left_bound  |1      |
      |right_bound |4      |
      |north_bound |3      |
      |south_bound |-3     |
      |live_cells  |0      |
      |dead_cells  |0      |

