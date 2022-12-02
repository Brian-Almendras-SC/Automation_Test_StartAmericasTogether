Feature: Events
    In order to 
    As a lider 
    I want to get details of one event
Background: loged as a Lider User
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    And I enter the field User id and fill with my "lider"
    And I enter the field Contraseña and fill with my "LPASS"
    And I click in the option "Iniciar Sesión"

Scenario:
    Then should be able to visualize the tittle "Tus Próximos Eventos"  

