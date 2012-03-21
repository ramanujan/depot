class StoreController < ApplicationController
  
  def index

    @products = Product.order("name asc").all

  end

end
