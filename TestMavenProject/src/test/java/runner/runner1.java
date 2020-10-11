package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "json:target/cucumber-report.json","html:target/cucumber-report.html"},
        features = "src/test/java/features",
        glue = "steps",
        tags = "@test")
public class runner1 {

    @AfterClass
    public static void test() {
        System.out.println("test123");
    }


}
