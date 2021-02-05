Rails.application.routes.draw do

  get 'store_front/about'
  resources :back_room

  resources :types
  #Resource full routes
  resources :types do 
   member do
     get :delete
   end
 end

  resources :promos
   #Resource full routes
   resources :promos do 
    member do
      get :delete
    end
  end
  
  resources :store_front
   #Resource full routes
   resources :store_front do 
    member do
      get :show
    end
  end

  resources :items
   #Resource full routes
   resources :items do 
    member do
      get :delete
    end
  end


  root "store_front#index"
  
end
