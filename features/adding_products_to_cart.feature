Feature: Adding product to cart
  Come utente(buyer) voglio essere 
  in grado di selezionare un prodotto 
  da una lista di quelli disponibili alla vendita
  e quindi ci aggiungerlo al carrello con un semplice click
  
@javascript
Scenario: Add a product from a list, to cart 

Given there is a product named "Cucumber"
And I am on the "store products page"
Then I should see "Cucumber"
When I press "Add to Cart"
Then I should see "The product has been added to cart"
And I should see "Products"
