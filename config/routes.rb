Depot::Application.routes.draw do

  get "static_pages/home"

  get "static_pages/about"

  get "static_pages/contact"

  root :to => 'static_pages#home'
     
  get '/home', :to=> 'static_pages#home' 
  get '/about', to:"static_pages#about"
  get '/contact', to:"static_pages#contact"
  get '/heroku_reset', to:"static_pages#heroku_db_reset"
  get '/heroku_migrate', to:"static_pages#heroku_db_migrate"
  
  get '/store', to:"store#index"
  get '/store/products/:product_id/', 
       :to => 'store#show',
       :as => :store_product
    
  resources :products
  resources :line_items, :only=>[:create]  
 
end
