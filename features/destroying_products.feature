Feature: Creating products
  Come utente (seller), voglio 
  andare sulla homepage accedere ad 
  una lista di prodotti disponibili,
  e quindi cancellare un ben determinato prodotto.
  
Scenario:
  Given there is a product named "Cucumber"
  And there is a product named "Magic Pencil"
  And I am on the homepage
  And I follow "Show Products"
  And I follow "Delete Product"
  Then I should see "Product has been destroyed"
  And I should not see "Cucumber"
  