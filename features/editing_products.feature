Feature: Editing products
  Come utente(seller) voglio andare sulla homepage 
  e scegliere di accedere ad una lista di prodotti 
  disponibili. A questo punto voglio poter aggiornare i 
  dati di un prodotto facilmente.
  
Background:
  Given there is a product named "Magik Pencil"
  Given I am on the homepage
  And I follow "Show Products"
  And I follow "Edit Product"

Scenario: Updating a product
  Then I should see "Edit product's details:" within "h1.page-header"
  When I fill in "Name" with "Magikuta Pen"
  And  I fill in "Price" with "2.25"
  And I press "Update Product"
  Then I should see "Product has been updated"
  And I should see "Magikuta Pen"
  And I should not see "Magik Pencil"
