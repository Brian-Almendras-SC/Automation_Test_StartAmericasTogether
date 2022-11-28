Feature: Events
    In order to know about this event
    As a User 
    I want to get details of one event
Background: loged as a Lider User
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    When I enter the field User id and fill with my "lider"
    And I enter the field Contraseña and fill with my "LPASS"
    Then I press the button "Iniciar Sesión"

Scenario: As a lider i want follow any event creted
    Given I click in the option "Eventos"
    When I find "Edited By Automated Test"
    Then I click over Detalles 
    And Show details page about this event
