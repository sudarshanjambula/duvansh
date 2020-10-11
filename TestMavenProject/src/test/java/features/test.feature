Feature:
  Verify Maven Project Executed

  @test
  Scenario: Test scenario 1
    Given Verify given step
    When Verify when step
    Then Verify then step

  @port
  Scenario: Verify Author names of the post based on provided id
    Given I perform Get operation for post
    When I perform Get for the id
    Then I should see author name

  @port1
  Scenario: Verify Author names of the post with parameter
    Given Pararmeter I perform Get operation for "/post"
    When Pararmeter I perform Get for the "1"
    Then Pararmeter I should see author name as "typicode"

  @port2
  Scenario: Verify all Author names of the post
    Given I perform Get operation for all "/post"
    Then I should verify all author name as "typicode"

  @port3
  Scenario: Verify GET with path parameter
    Given I perform Get operation for all "/post"
    Then I should get path parameter value

  @port4
  Scenario: Verify GET with Query parameter
    Given I perform Get operation for all "/post"
    Then I should get query parameter value

  @port5
  Scenario: Verify one author of the post1
    Given I perform Get operation for "http://localhost:3000/users/1"
    Then  I should see authoer firstName as "Raj"
    And  I should see authoer lastName as "Reddy"

  @port6
  Scenario Outline: Verify one author of the abcd
    When I perform Get operation for url12 "http://localhost:3000/users/<post>"
    Then I should see firstName as <firstName>
    And I should see lastName as <lastName>

    Examples:
      | post | firstName | lastName |
      | 1    | Raj       | Reddy    |



