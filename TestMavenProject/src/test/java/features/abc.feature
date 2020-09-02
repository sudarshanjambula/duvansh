Feature:
  Test Verify different GET operations using REST-assured

  Scenario: Test Verify one author of the post
    Given Test I perform GET operation for "/post"
    And Test I perform GET for the post number "1"
    Then Test I should see author name as "typicode"

  Scenario: Test Verify collection of author of the post
    Given Test I perform GET operation for "/post"
    Then Test I should see author names