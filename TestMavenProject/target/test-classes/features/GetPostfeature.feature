Feature:
  Verify different GET operations using REST-assured

  Scenario: Verify one author of the post
    Given I perform GET operation for
    And I perform GET for the post number
    Then I should see author name as
