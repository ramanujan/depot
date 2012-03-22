class ProductsController < ApplicationController
  
  before_filter :find_product, only:[:show,:edit,:update]

  def new
    @title="New product"
    @product= Product.new
  end

  def create
    @product = Product.new params[:product] 
    
    if @product.save 
      flash[:info]=t("products.create.success")
      redirect_to product_path(@product)
    else
      flash[:block]=t("products.create.error")
      @title="Product create errors"
      render 'new'
    end

  end


  def show 
    @title="Show product: #{@product.name}" 
  end

  def index
    
    @products=Product.order("name asc").all
    @title="Listing products"
  end 

  def edit
     @title="Edit product: #{@product.name}" 
     render 'new'
  end

  def update
    begin     
      if @product.update_attributes(params[:product])
        flash[:info]=t("products.update.success")
        redirect_to products_path
    else
        flash[:block]=t("products.update.error")
        @title="Product update errors"
        render 'new'
    end

    rescue
       flash[:block]="Product has not been updated (exceptionally update error)"
       redirect_to products_path
    end 
 
  end

  # Per il momento piazzo una delete diretta. 
  
  def destroy
    Product.destroy(params[:id])  
    flash[:info]="Product has been destroyed"
    redirect_to products_path 
  end

  private
  
  def find_product
    begin
      @product = Product.find(params[:id])  
    rescue
      flash[:block]=t("products.find.error")
      redirect_to products_path 
      return
    end
     
  end 

  


end