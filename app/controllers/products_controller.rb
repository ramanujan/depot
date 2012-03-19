class ProductsController < ApplicationController
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
      render 'new'
    end

  end


  def show 
    @product=Product.find(params[:id]) # Nota non serve una conversione da stringa a numero. 
    @title="Show product: #{@product.name}" 
  end

end