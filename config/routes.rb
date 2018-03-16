Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pictures
  resources :article, only: [:index]
  root to: "pictures#index"
end
