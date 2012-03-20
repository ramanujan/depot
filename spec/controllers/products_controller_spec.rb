require 'spec_helper'

describe ProductsController do
  
  
  context "request for a missing product" do
    
    before do
      @product = Factory(:product)
    end
    
    it "should display an error message" do
      get :show, :id=>100 
      response.should redirect_to(products_path)
      message="The product you are looking for could not be found"      
      flash[:block].should eql(message) 
    end    
  
  end

end
