Rails.application.routes.draw do
  resources :wishlist_items
  resources :budget_items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
