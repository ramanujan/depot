Feature: Listing products
 Al fine di poter manipolari i prodotti,
 come utente(seller) voglio poter accedere ad una lista di prodotti disponibili
 e scegliere un prodotto da questa lista
 
Scenario: Listing products
  Given there is a product named "Cucumber"
  And I am on the homepage
  And I follow "Show Products"
  Then I should see "Catalog page"
  When I follow "Cucumber"
  Then I should see "Cucumber" within "h1.page-header"
   
