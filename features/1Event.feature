Feature: Events
    In order to know about this event
    As a User 
    I want to get details of one event
Background: loged as a Lider User
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    And I enter the field User id and fill with my "lider"
    And I enter the field Contraseña and fill with my "LPASS"
    And I click in the option "Iniciar Sesión"

Scenario: As a lider i want follow any event creted
    When I click in the option "Eventos"
    And I find "Edited By Automated Test"
    Then Press the "Detalles" button of card "Edited By Automated Test"
    And should show te tittle "Edited By Automated Test"
