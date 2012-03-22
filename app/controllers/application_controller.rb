# Ogni controller dell'applicazione, deve essere in grado di recuperare l'id del carrello
# dalla sessione. Con questo id sarà poi in grado di recuperare l'oggetto Cart dal database.


class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    begin
      Cart.find(session[:cart_id])
    rescue
      cart = Cart.create!
      session[:cart_id]=cart.id
      cart 
    end
  end

end
