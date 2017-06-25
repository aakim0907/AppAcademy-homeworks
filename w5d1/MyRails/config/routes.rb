Rails.application.routes.draw do
  # get 'links', to: 'links#index'
  # get 'links/:id', to: 'links#show'
  # post 'links', to: 'links#create'
  # patch 'links/:id', to: 'links#update'
  # put 'links/:id', to: 'links#update'
  # delete 'links/:id', to: 'links#destroy'

  resources :users, only: [:new, :create]
  resources :links
  resources :comments, only: [:create, :destroy]
  resource :session, only: [:new, :create, :destroy]
end
