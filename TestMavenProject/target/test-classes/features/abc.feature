Feature:
  Test Verify different GET operations using REST-assured

  @test
  Scenario Outline: Test Verify one author of the post
    Given I perform GET operation for post
    And Test I perform GET for the post number <arg0>
    Then Test I should see author name as <arg01>
    Examples:
      | arg0 | arg01      |
      | "1"  | "typicode" |
#
#  Scenario: Test Verify collection of author of the post
#    Given Test I perform GET operation for "/post"
#    Then Test I should see author names