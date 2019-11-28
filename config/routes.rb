Rails.application.routes.draw do
  resource :user
  resources :posts
  resources :likes

  root "users#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
