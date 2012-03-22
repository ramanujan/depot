class StoreController < ApplicationController
  before_filter :find_product, :only=>[:show]
  
  def index

    @products = Product.order("name asc").all

  end

  def show
    @title="Show product: #{@product.name}"    
  end
  
  #========================#
  
   private
  
  def find_product
    begin
      @product = Product.find(params[:product_id])  
    rescue
      flash[:block]=t("products.find.error")
      redirect_to store_path 
      return
    end
     
  end 

end
