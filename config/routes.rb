Rails.application.routes.draw do
  resources :doctor_profiles
  resources :user_profiles
  devise_for :doctors
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'pages/user'
  get 'pages/admin'
end
