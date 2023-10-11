@createnote
Feature: Створення нової нотатки

  Background:
    Given I am on the login page
    When I enters "admin" in the "login" field
    And I enters "admin" in the "password" field
    And I clicks the "Увійти" button
    Then Me be redirected to the dashboard page
    And Me must see "User Notes" on the page

  Scenario: Create new note
    When I click the "Додати новий нотаток" button
    And I fill in "Заголовок" in the "title" field
    And I fill in "Контент" in the "content" field
    And I click the "Зберегти" button
    Then Me be redirected to the dashboard page
    And Me must see "User Notes" on the page

  Scenario: Create new note without require field
    When I click the "Додати новий нотаток" button
    And I click the "Зберегти" button
    Then Me must see "Заповніть обов'язкові поля" on the page
