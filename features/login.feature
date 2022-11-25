Feature: 
    As Lider
    I want to log-in into START AMERICAS TOGETHER WEB PAGE
    So that enten to START AMERICAS TOGETHER WEB PAGE

Scenario Outline: Log into the system
    Given I visit the "https://testing-start.web.app/"
    And press over opcion "INICIAR SESIÓN"

Examples:
| Account              | PASS   |
| Lider@gmail.com      | 123456 | 