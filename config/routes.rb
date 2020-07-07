Rails.application.routes.draw do
  resources :joined_events, only: [:index, :create, :show]
  resources :follows, only: [:index]
  resources :users, only: [:index, :show, :update]
  resources :events, only: [:index, :create, :show, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
