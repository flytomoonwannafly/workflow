@login

Feature: Auth
  In order to test auth process
  As a guest
  I need to enter correct creadentions in the login form and see user dashboard

  Scenario: try Auth (success flow)
    Given I am on the login page
    When I enters "admin" in the "login" field
    And I enters "admin" in the "password" field
    And I clicks the "Увійти" button
    Then Me be redirected to the dashboard page
    And Me must see "User Notes" on the page

  Scenario: try Auth (fail flow)
    Given I am on the login page
    When I enters "adminadmin" in the "login" field
    And I enters "adminss" in the "password" field
    And I clicks the "Увійти" button
    Then Me must see "Логін і/чи пароль були введені не вірно" on the page