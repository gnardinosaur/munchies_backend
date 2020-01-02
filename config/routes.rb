Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      get "users/:id/order_items", to: "users#order_items"
      resources :orders
      resources :items
      resources :order_items
    end
  end

end
