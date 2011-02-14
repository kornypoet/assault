Feature: The Game of Assault Feature
  In order to win the coding contest
  As a Developer
  I want to write useful tests that describe functionality

  Scenario: Cell Distance in Same Territory
    Given there is a Battlefield
    And   there is a White Blood Cell located at (-2,2)
    And   there is a Virus located at (1,3)
    When  the program checks the distance between the two Cells
    Then  the distance should be [2,1]

  Scenario: Cell Distance in Different Territory
    Given there is a Battlefield
    And   there is a White Blood Cell located at (1,-3)
    And   there is a Virus located at (2,2)
    When  the program checks the distance between the two Cells
    Then  the distance should be [1,4]

  Scenario: Describe Cell
    Given there is a Battlefield
    And   there is a White Blood Cell located at (2,-1)
    And   the White Blood Cell is alive
    When  the program describes the White Blood Cell
    Then  the user should see "Assault::WhiteBloodCell - 2.-1 - true - friendly"

  Scenario: Describe empty Battlefield
    Given there is a Battlefield
    And   the Battlefield is empty
    When  the program describes the Battlefield
    Then  the Battlefield should have the following attributes
      |columns     |4      |
      |rows        |6      |
      |left_bound  |1      |
      |right_bound |4      |
      |north_bound |3      |
      |south_bound |-3     |
      |live_cells  |0      |
      |dead_cells  |0      |

  Scenario: Describe Battlefield with Cells
    Given there is a Battlefield
    And   there is a White Blood Cell located at (2,-2)
    And   the White Blood Cell is alive
    And   there is a Virus located at (1,1)
    And   the Virus is dead
    When  the program describes the Battlefield
    Then  the Battlefield should have the following attributes
      |columns     |4      |
      |rows        |6      |
      |left_bound  |1      |
      |right_bound |4      |
      |north_bound |3      |
      |south_bound |-3     |
      |live_cells  |1      |
      |dead_cells  |1      |

  Scenario: Describe expanded Battlefield
    Given there is a Battlefield
    And   there is a White Blood Cell located at (6,-4)
    And   there is a Virus located at (-2,5)
    When  the program describes the Battlefield
    Then  the Battlefield should have the following attributes
      |columns     |8      |
      |rows        |9      |
      |left_bound  |-2     |
      |right_bound |6      |
      |north_bound |5      |
      |south_bound |-4     |
      |live_cells  |2      |
      |dead_cells  |0      |

  Scenario: White Blood Cell Advance
    Given there is a Battlefield
    And   there is a White Blood Cell located at (3,-3)
    And   there is a White Blood Cell located at (3,-2)
    When  the program advances the first White Blood Cell
    Then  the Cells should have the following attributes
      |type| 
