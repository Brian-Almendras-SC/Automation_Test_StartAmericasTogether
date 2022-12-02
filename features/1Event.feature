Feature: Test all option in event page 
    In order to know about this event
    As a lider 
    I want to get details of one event
Background: loged as a Lider User
    Given I visit the START AMERICAS TOGETHER
    And Press over option iniciar sesion
    And I enter the field User id and fill with my "lider"
    And I enter the field Contraseña and fill with my "LPASS"

Scenario: Create a new event using lider account
	When I click in the option "Eventos"
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Crear Evento" button
	And The "Crear evento" form shows the tittle form
	Then  I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatizado |
    |Descripcion: 	    | Descripcion Evento Automatizado|
    |Lider: 	        | Lider Lider       |
    |Modalidad: 	    | Virtual   		|
    |Lugar:           	| CBBA  |	
    |Fecha: 	        | 10/06/2024        |
    |Categoria: 	    | Educacion         |
    |Proyecto:  		| ProyectoPrueba            |
	And Press the "Guardar Evento" button 
    And I find to create the event "Evento Automatizado" and press "Detalles"
    And should was able to show title "Evento Automatizado"