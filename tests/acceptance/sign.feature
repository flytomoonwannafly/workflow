@sign

Feature: Sign
  In order to test sign process
  As a guest
  I need to enter correct creadentions in the login form and see user dashboard

  Scenario: try Sign (success flow)
    Given I am on the sign page
    When I enters "volferme" in the "login" field
    And I enters "volf" in the "password" field
    And I clicks the "Зареєструватись" button
    Then Me must see "Ви успішно зареєструвались" on the page

  Scenario: try Sign (fail flow)
    Given I am on the sign page
    When I enters "volferme" in the "login" field
    And I enters "volf" in the "password" field
    And I clicks the "Зареєструватись" button
    Then Me must see "Таке ім'я вже зареєстроване" on the page
