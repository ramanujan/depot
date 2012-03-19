Feature: Creating products
  Come utente, voglio 
  andare sulla homepage e creare
  un prodotto facilmente.

Background:   
  Given I am on the homepage 
  When I follow "Create Product"
  
Scenario: Create product
  And I fill in "Name" with "Cucumber"
  And I fill in "Description" with "A deliciuos vegetable, used among other things,for tzazichi sauce"
  And I fill in "Price" with "1.50"
  And I press "Create Product"
  Then I should see "Product has been created"
  
Scenario: Create a product without a name
  And I fill in "Description" with "A deliciuos vegetable, used among other things,for tzazichi sauce"
  And I fill in "Price" with "1.50"
  And I press "Create Product"
  Then I should see "Product has not been created"
   
   
  