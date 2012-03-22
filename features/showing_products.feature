Feature: Showing products
 Per avere maggiori informazioni sul prodotto
 come utente(buyer) voglio poter accedere ad una lista di prodotti disponibili
 e scegliere di visualizzare il prodotto da questa lista
 
Scenario: View product
  Given there is a product named "Cucumber"
  And I am on the homepage
  And I follow "Go To Store"
  Then I should see "Products"
  When I follow "Cucumber"
  Then I should see "Cucumber"
   