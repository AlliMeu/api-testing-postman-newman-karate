Feature: JSONPlaceholder API Tests

  Background:
    * url baseUrl

  Scenario: GET a single post
    Given path 'posts/1'
    When method get
    Then status 200
    And match response.id == 1

  Scenario: Create a new post
    Given path 'posts'
    And request { title: 'karate test', body: 'hello world', userId: 1 }
    When method post
    Then status 201

  Scenario: GET non-existing post
    Given path 'posts/99999'
    When method get
    Then status 404