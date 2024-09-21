Rails.application.routes.draw do
  devise_for :supports
  devise_for :admins
  resources :tests
  devise_for :patients

  resources :patient_profiles
  resources :appointments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'pages/user'
  get 'pages/admin'
end
