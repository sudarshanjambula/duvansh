package steps;

import io.restassured.http.ContentType;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.hamcrest.Matchers.containsInAnyOrder;
import static org.hamcrest.Matchers.is;

public class BDDStylesMethod {
    public static void SimpleGETPost(String  postNumber)
    {
        given().contentType(ContentType.JSON).
        when().get(String.format("http://localhost:3000/posts/%s",postNumber)).
                then().body("author", is("typicode"));
    }

    public static void PerformContainsCollection()
    {
        given()
                .contentType(ContentType.JSON)
        .when()
                .get(String.format("http://localhost:3000/posts"))
        .then()
                .body("author", containsInAnyOrder("typicode","typicode2",null)).statusCode(200);
    }
}
