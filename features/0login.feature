Feature: 
    As User
    I want to log-in into START AMERICAS TOGETHER WEB PAGE
    So that into to START AMERICAS TOGETHER WEB PAGE

@maximize
Scenario Outline: Log into the system
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    When I enter the field User id and fill with my "<User>"
    And I enter the field Contraseña and fill with my "<PASS>"
    Then I press the button "Iniciar Sesión"

Examples:
| User            | PASS  |
| lider           | LPASS | 
| coreteam        | VPASS |
| voluntario      | CPASS |