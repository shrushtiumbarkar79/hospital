Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # root "articles#index"
  # post 'create', to: 'doctors#create'
  # post 'create', to: 'patient#create'
  post 'create', to: 'appointmnet#create'
  # get '/show/:id', to: 'doctors#show'
  # get 'index', to: 'doctors#index'

end
