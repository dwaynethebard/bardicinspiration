Rails.application.routes.draw do
   #Resource full routes
   resources :items do 
    member do
      get :delete
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'store#index'
end
