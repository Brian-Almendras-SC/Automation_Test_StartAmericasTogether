Feature: Register as new user
  In order to Register
  As new user
  I want to test the register option
  
Scenario: Register a volunteer on site        
	Given I am on the Start Americas homepage
	And I click in the option "Unete a Start"
	When I enter the required fields as show below
	  |Nombre: 	          | Pepito             |
    |Apellido: 	        | Perez              |
    |Phone: 	          | 6042251            |
    |Email: 	          | pepe@pepazo.com    |
    |Password:          | PepeStart1         | 
    |Confirm Password:  | PepeStart1         |
	Then send my registration form
  And should redirect to Log In Page and show the title "Iniciar Sesión" 