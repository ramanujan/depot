require 'spec_helper'

describe Product do

 let(:product){ Factory(:product) }
 
 context "with an invalid" do
 
   it "field name: " do
      @invalid_product = Product.new(product.attributes.merge(:name=>""))       
      @invalid_product.should_not be_valid
   
   end
    
   it "field description: " do
      @invalid_product = Product.new(product.attributes.merge(:description=>""))       
      @invalid_product.should_not be_valid
   
   end
 
    it "field price (nil) : " do
      @invalid_product = Product.new(product.attributes.merge(:price=>nil))       
      @invalid_product.should_not be_valid
   
   end
   
   it "field price (blank) : " do
      @invalid_product = Product.new(product.attributes.merge(:price=>""))       
      @invalid_product.should_not be_valid
   
   end
    
    it "field price ( Not A Number ) : " do
      @invalid_product = Product.new(product.attributes.merge(:price=>"cheaper price"))       
      @invalid_product.should_not be_valid
   
   end
   
   it "field price ( Number > 0.01  ) : " do
      @invalid_product = Product.new(product.attributes.merge(:price=>0.001))       
      @invalid_product.should_not be_valid
   
   end
    
    
 end
 
 context "with a not unique" do   
 
   it "name field" do
     
     @invalid_product = Product.new(product.attributes)
     @invalid_product.should_not be_valid     
   end
 
 end
 
end
