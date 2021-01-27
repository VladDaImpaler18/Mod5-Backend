Rails.application.routes.draw do
  resources :budget_items
  resources :wishlist_items
  resources :users

  delete '/budget_items/', to: 'budget_items#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
