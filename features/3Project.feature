Feature: Test the categories of projects on the app
    As a lider account
    I want to join one categories of the projects
    so that join and participate the project select
    
Background: loged as a Lider User
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    And I enter the field User id and fill with my "lider"
    And I enter the field Contraseña and fill with my "LPASS"
    And I click in the option "Iniciar Sesión"
    
    
Scenario Outline: See the the active projects list
    When I click in the option "Proyectos" 
    And I click in the category projects called "<Category>"
    Then Should be able to see the active projects list of "<Category>"

Examples:
|Category|
|Medio Ambiente|
|Desarrollo Sostenible|
|Trabajo Social|
|Empoderamiento|
|Animales|
|Comunidad|
|Educación|
|Otros|
