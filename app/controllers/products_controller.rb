class ProductsController < ApplicationController
  
  before_filter :find_product, only:[:show,:edit,:update]

  def new
    @title="New product"
    @product= Product.new
  end

  def create
    @product = Product.new params[:product] 
    
    if @product.save 
      flash[:info]=t("new_product.info")
      redirect_to product_path(@product)
    else
      flash[:block]=t("new_product.error")
      @title="Product create errors"
      render 'new'
    end

  end


  def show 
    @title="Show product: #{@product.name}" 
  end

  def index
    
    @products=Product.all
    @title="Listing products"
  end 

  def edit
     @title="Edit product: #{@product.name}" 
     render 'new'
  end

  def update
    begin     
      if @product.update_attributes(params[:product])
        flash[:info]="Product has been updated"
        redirect_to products_path
    else
        flash[:block]="Product has not been updated"
        @title="Product update errors"
        render 'new'
    end

    rescue
       flash[:block]="Product has not been updated (exceptionally update error)"
       redirect_to products_path
    end 
 
  end

  private
  
  def find_product
    begin
      @product = Product.find(params[:id])  
    rescue
      flash[:block]=t("find_product_error")
      redirect_to products_path 
      return
    end
     
  end 

end