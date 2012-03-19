Depot::Application.routes.draw do

  get "static_pages/home"

  get "static_pages/about"

  get "static_pages/contact"

  root :to => 'static_pages#home'
     
  get '/home', :to=> 'static_pages#home' 
  get '/about', to:"static_pages#about"
  get '/contact', to:"static_pages#contact"
  
  resources :products
   
 
end
