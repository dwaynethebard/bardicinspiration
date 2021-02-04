Rails.application.routes.draw do
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
