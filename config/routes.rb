Rails.application.routes.draw do
  root to: "home#top"
  get 'home/about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
resources :users, only: [:show, :edit, :update]