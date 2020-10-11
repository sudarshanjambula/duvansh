package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class MyStepdefs {
//    @Given("Test I perform GET operation for {string}")
//    public void testIPerformGETOperationFor(String arg0) {
//        System.out.println(arg0);
//    }

    @And("Test I perform GET for the post number {string}")
    public void testIPerformGETForThePostNumber(String arg0) {
        //Test comments
    }

    @Then("Test I should see author name as {string}")
    public void testIShouldSeeAuthorNameAs(String arg0) {
    }

    @Given("I perform GET operation for post")
    public void iPerformGETOperationForPost() {
    }
}
