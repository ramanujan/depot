class LineItemsController < ApplicationController

  before_filter :find_product;
  
  
  def create
    
    cart = current_cart;  
    cart.line_items.build(:product=>@product);
    
    if cart.save 
      flash[:info]=t("line_items.create.success")
    else
      flash[:error]=t("line_items.create.error")
     
    end    
    redirect_to store_path    
  end
  
  
  #===========================#
  private 
  
  def find_product
  
    begin
      
      @product=Product.find(params[:product_id])
          
    rescue
      flash[:block]=t("line_items.find_product.error")
      redirect_to store_path
    end  
  
  end 
   
   
end
