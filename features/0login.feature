Feature: Log-in with account
    As User
    I want to log-in into START AMERICAS TOGETHER WEB PAGE
    So that into to join to something event or project

@maximize
Scenario Outline: Log into the system with multiple Users
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    When I enter the field User id and fill with my "<User>"
    And I enter the field Contraseña and fill with my "<PASS>"
    Then I press the button "Iniciar Sesión"
    And the bottom log in change for "<Initial>"

Examples:
| User            | PASS  | Initial |
| lider           | LPASS | LL      |
| voluntario      | VPASS | VV      |
| coreteam        | CPASS | CT      |  