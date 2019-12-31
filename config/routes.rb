Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :orders
      resources :items
      resources :order_items
    end
  end

end
