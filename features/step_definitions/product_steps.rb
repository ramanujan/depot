Given /^there is a product named "([^"]*)"$/ do |product_name|
 
 @product = Factory(:product,name:product_name)
 
end